<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->integer('id_category');
            $table->string('model');
		    $table->string('name');
            $table->string('description');            
            $table->decimal('list_price', 10, 2);
            $table->decimal('sale_price', 10, 2);            
            $table->string('picture');
            $table->string('specsheet');
            $table->string('specs');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}

