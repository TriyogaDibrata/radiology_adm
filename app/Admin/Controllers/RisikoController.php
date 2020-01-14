<?php

namespace App\Admin\Controllers;

use App\Risiko;
use App\Apd;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class RisikoController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Risiko';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Risiko());

        $grid->column('id', __('Id'));
        $grid->column('dosis', __('Dosis'));
        $grid->column('risiko', __('Risiko'));
        $grid->column('apd', __('Apd'));
        $grid->column('apd_id', __('Apd'));
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
        $show = new Show(Risiko::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('dosis', __('Dosis'));
        $show->field('risiko', __('Risiko'));
        $show->field('apd', __('Apd'));
        $grid->field('apd_id', __('Apd'));
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
        $form = new Form(new Risiko());

        $apds = Apd::pluck('apd', 'id');

        $form->text('dosis', __('Dosis'));
        $form->ckeditor('risiko', __('Risiko'));
        $form->text('apd', __('Apd'));
        $form->select('apd_id', 'Apd_id')->options($apds);

        return $form;
    }
}
