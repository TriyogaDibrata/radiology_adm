<?php

namespace App\Admin\Controllers;

use App\JenisPemeriksaan;
use App\Modalitas;
use App\Risiko;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class JenisPemeriksaanController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\JenisPemeriksaan';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new JenisPemeriksaan());
        $grid->disableRowSelector();

        $no = 1;

        // $grid->column('id', __('Id'));
        $grid->id('No')->display(function($no){
            return $no++;
        });
        $grid->column('jenis_pemeriksaan', __('Jenis pemeriksaan'));
        $grid->column('persiapan_pasien', __('Persiapan pasien'));
        $grid->column('manfaat', __('Manfaat'));
        // $grid->column('modalitas', __('Modalitas'));
        $grid->modalitas('Alat Radiologi')->display(function($modalitas){
            return Modalitas::find($modalitas)->modalitas;
        });
        $grid->column('deskripsi', __('Deskripsi'));
        // $grid->column('risiko', __('Risiko'));
        $grid->risiko('Dosis')->display(function($risiko){
            return Risiko::find($risiko)->dosis;
        });
        // $grid->column('created_at', __('Created at'));
        // $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(JenisPemeriksaan::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('jenis_pemeriksaan', __('Jenis pemeriksaan'));
        $show->field('persiapan_pasien', __('Persiapan pasien'));
        $show->field('manfaat', __('Manfaat'));
        $show->field('modalitas', __('Modalitas'));
        $show->field('deskripsi', __('Deskripsi'));
        $show->field('risiko', __('Risiko'));
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
        $form = new Form(new JenisPemeriksaan());

        $modalitas = Modalitas::pluck('modalitas', 'id');

        $risiko = Risiko::pluck('dosis', 'id');

        $form->text('jenis_pemeriksaan', __('Jenis pemeriksaan'));
        $form->ckeditor('persiapan_pasien', __('Persiapan pasien'));
        $form->textarea('manfaat', __('Manfaat'));
        $form->select('modalitas', 'Modalitas')->options($modalitas);
        $form->textarea('deskripsi', __('Deskripsi'));
        $form->select('risiko', 'Dosis')->options($risiko);
        return $form;
    }
}
