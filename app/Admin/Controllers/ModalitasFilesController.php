<?php

namespace App\Admin\Controllers;

use App\Modalitas;
use App\ModalitasFiles;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ModalitasFilesController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\ModalitasFiles';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ModalitasFiles());
        $grid->disableRowSelector();

        $grid->rows(function (Grid\Row $row) {
            $row->column('no', $row->number);
         });

        // $grid->column('id', __('Id'));
        $grid->column('no');
        $grid->modalitas_id()->display(function($modalitas_id){
            return Modalitas::find($modalitas_id)->modalitas;
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
        $show = new Show(ModalitasFiles::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('modalitas_id', __('Modalitas id'));
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
        $form = new Form(new ModalitasFiles());

        $modalitas = Modalitas::pluck('modalitas', 'id');

        $form->select('modalitas_id', 'Alat Radiologi')->options($modalitas);
        //$form->text('filepath', __('Filepath'));
        $form->image('file_name')->uniqueName();

        return $form;
    }
}
