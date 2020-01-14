<?php

namespace App\Admin\Controllers;

use App\Modalitas;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ModalitasController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Modalitas';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Modalitas());

        $grid->column('id', __('Id'));
        $grid->column('modalitas', __('Modalitas'));
        $grid->column('deskripsi', __('Deskripsi'));
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
        $show = new Show(Modalitas::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('modalitas', __('Modalitas'));
        $show->field('deskripsi', __('Deskripsi'));
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
        $form = new Form(new Modalitas());

        $form->text('modalitas', __('Modalitas'));
        $form->textarea('deskripsi', __('Deskripsi'));

        return $form;
    }
}
