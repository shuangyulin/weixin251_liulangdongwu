const base = {
    get() {
        return {
            url : "http://localhost:8080/liulangdongwujiuzhu/",
            name: "liulangdongwujiuzhu",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/liulangdongwujiuzhu/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "流浪动物领养微信小程序"
        } 
    }
}
export default base
