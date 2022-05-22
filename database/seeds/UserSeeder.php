<?php

use Illuminate\Database\Seeder;
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */

    public function run()
    {
        $faker = Faker\Factory::create();
        $gender = $faker->randomElement(['Male', 'Female']);
        $occupation = $faker->randomElement(['Private Job', 'Government Job','Business']);
        $family = $faker->randomElement(['Joint Family', 'Nuclear Family']);
        $manglik = $faker->randomElement(['Yes', 'No']);
        for ($i = 0; $i < 15; $i++) {
            \Illuminate\Support\Facades\DB::table('users')->insert([
                'name' => $faker->name,
                'email' => $faker->unique()->safeEmail,
                'password' => bcrypt('password@123'),
                'is_admin'=>'0',
                'dob' => $faker->numberBetween($min = 21, $max = 50),
                'gender' => $gender,
                'income' => $faker->numerify('####'),
                'occupation' => $occupation,
                'family' => $family,
                'manglik' => $manglik,
            ]);
        }
    }
}
