<?php

namespace App\Admin\Controllers;

use App\JenisPemeriksaan;
use App\JenisPemeriksaanFiles;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class JenisPemeriksaanFilesController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\JenisPemeriksaanFiles';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new JenisPemeriksaanFiles());
        $grid->disableRowSelector();
        $grid->rows(function (Grid\Row $row) {
            $row->column('no', $row->number);
         });

        // $grid->column('id', __('Id'));
        $grid->column('no');
        // $grid->column('id', __('Id'));
        // $grid->column('jenis_pemeriksaan_id', __('Jenis pemeriksaan id'));
        $grid->jenis_pemeriksaan_id('Jenis Pemeriksaan')->display(function($jenis_pemeriksaan_id){
            return JenisPemeriksaan::find($jenis_pemeriksaan_id)->jenis_pemeriksaan;
        });
        // $grid->column('filepath', __('Filepath'));
        // $grid->column('file_name', __('File name'));
        $grid->file_name()->display(function($file_name){
            return "<img src='".asset('uploads/'.$file_name)."' width='100px' height='100px' />";
        });
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(JenisPemeriksaanFiles::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('jenis_pemeriksaan_id', __('Jenis pemeriksaan id'));
        $show->field('filepath', __('Filepath'));
        $show->field('file_name', __('File name'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new JenisPemeriksaanFiles());

        $jenis_pemeriksaan = JenisPemeriksaan::pluck('jenis_pemeriksaan', 'id');

        $form->select('jenis_pemeriksaan_id', 'Jenis Pemeriksaan')->options($jenis_pemeriksaan);
        //$form->text('filepath', __('Filepath'));
        $form->image('file_name')->uniqueName();

        return $form;
    }
}
