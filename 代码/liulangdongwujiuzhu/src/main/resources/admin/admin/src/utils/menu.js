







const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"用户管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"用户管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"信息发布管理",
			            "menuJump":"列表",
			            "tableName":"xinxifabu"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "删除"
			            ],
			            "menu":"信息发布评论管理",
			            "menuJump":"列表",
			            "tableName":"xinxifabuLiuyan"
			        }
			    ],
			    "menu":"信息发布管理"
			}
           ,{
               "child":[
                   {
                       "buttons":[
                           "查看",
                           "删除"
                       ],
                       "menu":"领养记录管理",
                       "menuJump":"列表",
                       "tableName":"lingyang"
                   }
               ],
               "menu":"领养记录管理"
           }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"动物小圈管理",
                        "menuJump":"列表",
                        "tableName":"forum"
                    }
                ],
                "menu":"动物小圈管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"求助日报管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"求助日报管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"宠物类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryChongwu"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"日报类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryNews"
			        }
			    ],
			    "menu":"基础数据管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    }
]
    }
}
export default menu;
