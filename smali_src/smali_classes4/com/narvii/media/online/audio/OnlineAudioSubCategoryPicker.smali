.class public Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;,
        Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

.field private apiService:Lcom/narvii/util/http/ApiService;

.field private categoryId:Ljava/lang/String;

.field private currentRequest:Lcom/narvii/util/http/ApiRequest;

.field private isPickButtonError:Z

.field private pickButton:Landroid/view/View;

.field private queryStr:Ljava/lang/String;

.field private selectedCategory:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashSet;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->selectedCategory:Ljava/util/Set;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->isPickButtonError:Z

    .line 14
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->adapter:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->categoryId:Ljava/lang/String;

    return-object p0
.end method

.method private updatePickText()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->pickButton:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->progress_pressed_frame:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->pickButton:Landroid/view/View;

    .line 14
    .line 15
    sget v2, Lcom/narvii/lib/R$id;->subcategory_pick_text:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroid/widget/TextView;

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    const-string v3, "/asset/sound/count"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->queryStr:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    const-string v4, "q"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    .line 50
    :cond_1
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->categoryId:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    const-string v4, "categoryId"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    .line 59
    :cond_2
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->selectedCategory:Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 63
    move-result v3

    .line 64
    .line 65
    if-nez v3, :cond_4

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    iget-object v4, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->selectedCategory:Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v4

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v5

    .line 81
    .line 82
    if-eqz v5, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v5

    .line 87
    .line 88
    check-cast v5, Ljava/lang/String;

    .line 89
    .line 90
    const-string v6, ","

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    const/4 v4, 0x1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    const-string v4, "filterIds"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 108
    .line 109
    :cond_4
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->currentRequest:Lcom/narvii/util/http/ApiRequest;

    .line 110
    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    iget-object v4, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->apiService:Lcom/narvii/util/http/ApiService;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    iput-object v2, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->currentRequest:Lcom/narvii/util/http/ApiRequest;

    .line 123
    .line 124
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->apiService:Lcom/narvii/util/http/ApiService;

    .line 125
    .line 126
    new-instance v4, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;

    .line 127
    .line 128
    const-class v5, Lcom/narvii/media/online/audio/model/AssetListResponse;

    .line 129
    .line 130
    .line 131
    invoke-direct {v4, p0, v5, v1, v0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;-><init>(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;Ljava/lang/Class;Landroid/widget/TextView;Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v2, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 135
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->pickButton:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->selectedCategory:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->isPickButtonError:Z

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->updatePickText()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const/high16 v0, 0x41700000    # 15.0f

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 10
    move-result v5

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p0

    .line 16
    move v3, v5

    .line 17
    move v4, v5

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->adapter:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

    .line 28
    const/4 v1, 0x2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    .line 41
    new-instance p1, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->adapter:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p0, v1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;Lcom/narvii/list/NVAdapter;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    return-object v0
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    const v1, -0xe4e4df

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
    return-object v0
.end method

.method public getListDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$id;->subcategory_pick_button:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->isPickButtonError:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->updatePickText()V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->selectedCategory:Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    const-string v1, "selectedCategory"

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const/4 v0, -0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    sget v0, Lcom/narvii/lib/R$drawable;->ic_actionbar_close:I

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    const-string p1, "categoryId"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->categoryId:Ljava/lang/String;

    .line 25
    .line 26
    const-string p1, "q"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->queryStr:Ljava/lang/String;

    .line 33
    .line 34
    const-string p1, "selectedCategory"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    const-class v0, Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->selectedCategory:Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->categoryId:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->queryStr:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_1
    sget p1, Lcom/narvii/lib/R$string;->subcategory_title:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_2
    :goto_0
    sget p1, Lcom/narvii/lib/R$string;->subcategory_title_search:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 72
    .line 73
    :goto_1
    const-string p1, "api"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->apiService:Lcom/narvii/util/http/ApiService;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 96
    .line 97
    sget v0, Lcom/narvii/lib/R$string;->clear:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    sget v2, Lcom/narvii/lib/R$color;->actionbar_text:I

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    new-instance v2, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;

    .line 110
    .line 111
    .line 112
    invoke-direct {v2, p0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;-><init>(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)V

    .line 113
    const/4 v3, 0x1

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/content/res/ColorStateList;ZLandroid/view/View$OnClickListener;)V

    .line 117
    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->media_audio_subcategory_list:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p2, Lcom/narvii/lib/R$id;->subcategory_pick_button:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->pickButton:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->updatePickText()V

    .line 18
    return-void
.end method
