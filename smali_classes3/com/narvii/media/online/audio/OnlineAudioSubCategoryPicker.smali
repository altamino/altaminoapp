.class public Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;
.super Lcom/narvii/list/NVListFragment;
.source "OnlineAudioSubCategoryPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;,
        Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;
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

    .line 42
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->selectedCategory:Ljava/util/Set;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->isPickButtonError:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/util/Set;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->selectedCategory:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->updatePickText()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->adapter:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->pickButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->isPickButtonError:Z

    return p1
.end method

.method static synthetic access$500(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->categoryId:Ljava/lang/String;

    return-object p0
.end method

.method private updatePickText()V
    .locals 7

    .line 132
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->pickButton:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x102000d

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->pickButton:Landroid/view/View;

    sget v2, Lcom/narvii/lib/R$id;->subcategory_pick_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 137
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x8

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/asset/sound/count"

    .line 142
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 143
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->queryStr:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "q"

    .line 144
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->categoryId:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v4, "categoryId"

    .line 147
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 150
    :cond_2
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->selectedCategory:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    iget-object v4, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->selectedCategory:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ","

    .line 153
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "filterIds"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 159
    :cond_4
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->currentRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v3, :cond_5

    .line 160
    iget-object v4, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->apiService:Lcom/narvii/util/http/ApiService;

    invoke-virtual {v4, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 162
    :cond_5
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->currentRequest:Lcom/narvii/util/http/ApiRequest;

    .line 163
    iget-object v2, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->apiService:Lcom/narvii/util/http/ApiService;

    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->currentRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v4, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;

    const-class v5, Lcom/narvii/media/online/audio/model/AssetListResponse;

    invoke-direct {v4, p0, v5, v1, v0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;-><init>(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;Ljava/lang/Class;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 109
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v5

    .line 110
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move v3, v5

    move v4, v5

    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 111
    new-instance v0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)V

    iput-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->adapter:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

    .line 112
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->adapter:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 114
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 115
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    new-instance p1, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;

    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->adapter:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

    invoke-direct {p1, p0, v1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$BottomPaddingAdapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;Lcom/narvii/list/NVAdapter;)V

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 90
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xe4e4df

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getListDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 127
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 122
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/narvii/lib/R$id;->subcategory_pick_button:I

    if-ne p1, v0, :cond_1

    .line 198
    iget-boolean p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->isPickButtonError:Z

    if-eqz p1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->updatePickText()V

    goto :goto_0

    .line 201
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->selectedCategory:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "selectedCategory"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 204
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 205
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 58
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$drawable;->ic_actionbar_close:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "categoryId"

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->categoryId:Ljava/lang/String;

    const-string p1, "q"

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->queryStr:Ljava/lang/String;

    const-string p1, "selectedCategory"

    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->selectedCategory:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->categoryId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->queryStr:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    sget p1, Lcom/narvii/lib/R$string;->subcategory_title:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    sget p1, Lcom/narvii/lib/R$string;->subcategory_title_search:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    :goto_1
    const-string p1, "api"

    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->apiService:Lcom/narvii/util/http/ApiService;

    .line 73
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_3

    .line 74
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 75
    sget v0, Lcom/narvii/lib/R$string;->clear:I

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$color;->actionbar_text:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;

    invoke-direct {v3, p0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;-><init>(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/content/res/ColorStateList;ZLandroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 95
    sget p3, Lcom/narvii/lib/R$layout;->media_audio_subcategory_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    sget p2, Lcom/narvii/lib/R$id;->subcategory_pick_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->pickButton:Landroid/view/View;

    .line 102
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->pickButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->updatePickText()V

    return-void
.end method
