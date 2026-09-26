.class Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/category/BlogCategoryPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/BlogCategory;",
        "Lcom/narvii/model/api/BlogCategoryListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field selected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/blog/category/BlogCategoryPickerFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v0, "blogCategoryList"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-class v0, Lcom/narvii/model/BlogCategory;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/blog-category"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/BlogCategory;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/narvii/blog/category/BlogCategoryPickerFragment;->t(Lcom/narvii/blog/category/BlogCategoryPickerFragment;)Z

    .line 10
    move-result p2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/model/BlogCategory;

    .line 35
    .line 36
    iget v1, v0, Lcom/narvii/model/BlogCategory;->type:I

    .line 37
    const/4 v2, 0x3

    .line 38
    .line 39
    if-eq v1, v2, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-object p2
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/BlogCategory;

    .line 3
    .line 4
    iget p1, p1, Lcom/narvii/model/BlogCategory;->type:I

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_1
    const/4 v0, 0x2

    .line 14
    .line 15
    if-ne p1, v0, :cond_2

    .line 16
    return v0

    .line 17
    :cond_2
    const/4 v0, 0x3

    .line 18
    .line 19
    if-ne p1, v0, :cond_3

    .line 20
    return v0

    .line 21
    :cond_3
    const/4 p1, -0x1

    .line 22
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/BlogCategory;

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/model/BlogCategory;->type:I

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0d0077

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    const p3, 0x7f0a0e51

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p3

    .line 22
    .line 23
    check-cast p3, Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-object p2

    .line 30
    .line 31
    :cond_0
    if-eqz v0, :cond_2

    .line 32
    const/4 v2, 0x2

    .line 33
    .line 34
    if-eq v0, v2, :cond_2

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    if-ne v0, v2, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return-object p1

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    const v0, 0x7f0d0078

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 48
    move-object p3, p2

    .line 49
    .line 50
    check-cast p3, Lcom/narvii/blog/category/BlogCategoryListItem;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p1}, Lcom/narvii/blog/category/BlogCategoryListItem;->setCategory(Lcom/narvii/model/BlogCategory;)V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/model/BlogCategory;->id()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const/4 v1, 0x0

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, v0}, Lcom/narvii/blog/category/BlogCategoryListItem;->setChecked(Ljava/lang/Boolean;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p2, p1}, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;)V

    .line 80
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/model/BlogCategory;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/BlogCategory;

    .line 11
    .line 12
    iget p1, v0, Lcom/narvii/model/BlogCategory;->type:I

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    const/4 v0, 0x2

    .line 16
    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    const/4 v0, 0x3

    .line 19
    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    return p1

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method protected markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/BlogCategory;

    .line 3
    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/BlogCategory;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/narvii/model/BlogCategory;->status()I

    .line 10
    move-result p1

    .line 11
    .line 12
    const-string p2, "account"

    .line 13
    const/4 p4, 0x1

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p3}, Lcom/narvii/model/BlogCategory;->status()I

    .line 37
    move-result p1

    .line 38
    const/4 p2, 0x3

    .line 39
    .line 40
    if-ne p1, p2, :cond_1

    .line 41
    .line 42
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    .line 52
    .line 53
    .line 54
    const p3, 0x7f1201b6

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    iget-object p2, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    .line 64
    .line 65
    .line 66
    const p3, 0x7f1201b7

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    const/4 p2, 0x4

    .line 75
    const/4 p3, 0x0

    .line 76
    .line 77
    .line 78
    const p5, 0x104000a

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p5, p2, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 85
    :cond_1
    return p4

    .line 86
    .line 87
    :cond_2
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    .line 88
    .line 89
    const-string p5, "single"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p5}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 93
    move-result p1

    .line 94
    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    new-instance p1, Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 101
    .line 102
    new-instance p2, Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    const-string p3, "blogCategoryList"

    .line 111
    .line 112
    .line 113
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    .line 119
    iget-object p2, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    .line 120
    const/4 p3, -0x1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p3, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 124
    .line 125
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 129
    .line 130
    goto/16 :goto_3

    .line 131
    .line 132
    :cond_3
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    .line 133
    .line 134
    if-nez p1, :cond_4

    .line 135
    .line 136
    new-instance p1, Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    iput-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    .line 142
    .line 143
    :cond_4
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3}, Lcom/narvii/model/BlogCategory;->id()Ljava/lang/String;

    .line 147
    move-result-object p5

    .line 148
    .line 149
    .line 150
    invoke-static {p1, p5}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 151
    move-result p1

    .line 152
    .line 153
    if-nez p1, :cond_8

    .line 154
    .line 155
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    .line 156
    .line 157
    const-string p5, "maximum"

    .line 158
    const/4 v0, 0x2

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p5, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 162
    move-result p1

    .line 163
    .line 164
    if-gt p1, v0, :cond_5

    .line 165
    goto :goto_0

    .line 166
    :cond_5
    move v0, p1

    .line 167
    .line 168
    .line 169
    :goto_0
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 173
    .line 174
    if-eqz p1, :cond_6

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 178
    move-result p2

    .line 179
    .line 180
    if-eqz p2, :cond_6

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 184
    move-result-object p2

    .line 185
    .line 186
    if-eqz p2, :cond_6

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    .line 194
    move-result p1

    .line 195
    .line 196
    if-eqz p1, :cond_6

    .line 197
    goto :goto_1

    .line 198
    .line 199
    :cond_6
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 203
    move-result p1

    .line 204
    .line 205
    if-lt p1, v0, :cond_7

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    iget-object p2, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->this$0:Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    .line 212
    .line 213
    new-array p3, p4, [Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    move-result-object p5

    .line 218
    const/4 v0, 0x0

    .line 219
    .line 220
    aput-object p5, p3, v0

    .line 221
    .line 222
    .line 223
    const p5, 0x7f1201b8

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, p5, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    move-result-object p2

    .line 228
    .line 229
    .line 230
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 231
    move-result-object p1

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 235
    goto :goto_2

    .line 236
    .line 237
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryPickerFragment$Adapter;->selected:Ljava/util/ArrayList;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    :cond_8
    :goto_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 244
    :goto_3
    return p4

    .line 245
    .line 246
    .line 247
    :cond_9
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 248
    move-result p1

    .line 249
    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/BlogCategoryListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/api/BlogCategoryListResponse;

    return-object v0
.end method
