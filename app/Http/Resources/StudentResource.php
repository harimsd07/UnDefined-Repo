<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class StudentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray( $request): array
    {
        return [
            'id' => (string)$this->id,
            'attributes' =>[
            'user_id' =>(string)$this->user_id,
            'title' => $this->title,
            'description' =>$this->description
            ],
            'relationships'=>[
                'name' =>$this->user->name,
                'email' =>$this->user->email,
            ],
        ];
    }
}
