<?php

namespace App\Admin\Controllers;

use App\Apd;
use App\ApdFiles;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ApdFilesController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\ApdFiles';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ApdFiles());
        $grid->disableRowSelector();

        $grid->rows(function (Grid\Row $row) {
            $row->column('no', $row->number);
        });

        // $grid->column('id', __('Id'));
        $grid->column('no');

        // $grid->column('id', __('Id'));
        $grid->apd_id('Alat Perlindungan Diri')->display(function($apd_id){
            return Apd::find($apd_id)->apd;
        });
        // $grid->column('file_path', __('File path'));
        $grid->file_name()->display(function($file_name){
            return "<img src='".asset('uploads/'.$file_name)."' height='100px' />";
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
        $show = new Show(ApdFiles::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('apd_id', __('Apd id'));
        $show->field('file_path', __('File path'));
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
        $form = new Form(new ApdFiles());

        $apds = Apd::pluck('apd', 'id');

        $form->select('apd_id', 'Alat Perlindungan Diri')->options($apds);
        $form->image('file_name')->uniqueName();

        return $form;
    }
}
