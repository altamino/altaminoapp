.class public Lcom/narvii/blog/category/ChangeCategoryFragment;
.super Lcom/narvii/blog/category/BlogCategoryPickerFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/post/PostListener;


# instance fields
.field dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/blog/category/BlogCategoryPickerFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/blog/category/ChangeCategoryFragment;->dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 15
    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x104000a

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    const-string p1, "blog"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-class v0, Lcom/narvii/model/Blog;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/model/Blog;

    .line 24
    const/4 v0, 0x1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    return v0

    .line 28
    .line 29
    :cond_0
    new-instance v1, Lcom/narvii/blog/category/ChangeCategoryPost;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->adapter:Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/narvii/blog/category/ChangeCategoryPost;-><init>(Ljava/util/ArrayList;)V

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/blog/category/ChangeCategoryFragment;->dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 39
    .line 40
    new-instance v3, Lcom/narvii/blog/category/ChangeCategoryFragment$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, p0}, Lcom/narvii/blog/category/ChangeCategoryFragment$1;-><init>(Lcom/narvii/blog/category/ChangeCategoryFragment;)V

    .line 44
    .line 45
    iput-object v3, v2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/narvii/blog/category/ChangeCategoryFragment;->dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 51
    .line 52
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    .line 54
    .line 55
    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    const-string v4, "/blog/"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p1, "/blog-category"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    new-instance v2, Lcom/narvii/post/PostHelper;

    .line 96
    .line 97
    .line 98
    invoke-direct {v2, p0}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 102
    .line 103
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v1, p1, v3}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    .line 107
    return v0

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 111
    move-result p1

    .line 112
    return p1
.end method

.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/blog/category/ChangeCategoryFragment;->dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->failureListener:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/blog/category/ChangeCategoryFragment;->dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method public onPostProgress(Lcom/narvii/post/PostHelper;II)V
    .locals 0

    return-void
.end method

.method public onPostStart(Lcom/narvii/post/PostHelper;)V
    .locals 0

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
