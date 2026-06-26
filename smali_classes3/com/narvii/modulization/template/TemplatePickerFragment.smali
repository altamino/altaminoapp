.class public Lcom/narvii/modulization/template/TemplatePickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "TemplatePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;,
        Lcom/narvii/modulization/template/TemplatePickerFragment$TopAdapter;
    }
.end annotation


# instance fields
.field expandMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public footerView:Landroid/view/View;

.field private matchParentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public packageUtils:Lcom/narvii/util/PackageUtils;

.field templateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/modulization/template/AminoTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private transitionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->expandMap:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/modulization/template/TemplatePickerFragment;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->matchParentIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/modulization/template/TemplatePickerFragment;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->transitionIds:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 92
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 93
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    new-array v3, v1, [Landroid/view/View;

    .line 95
    invoke-virtual {p0}, Lcom/narvii/modulization/template/TemplatePickerFragment;->isActionBarTransparent()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/narvii/widget/StatusBarPlaceHolder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/narvii/widget/StatusBarPlaceHolder;-><init>(Landroid/content/Context;)V

    :goto_0
    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 96
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    :cond_1
    new-instance v0, Lcom/narvii/modulization/template/TemplatePickerFragment$TopAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/modulization/template/TemplatePickerFragment$TopAdapter;-><init>(Lcom/narvii/modulization/template/TemplatePickerFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    new-instance v0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    const-class v3, Lcom/narvii/modulization/template/AminoTemplate;

    iget-object v4, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->templateList:Ljava/util/List;

    invoke-direct {v0, p0, p0, v3, v4}, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;-><init>(Lcom/narvii/modulization/template/TemplatePickerFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$layout;->adapter_layout_placeholder:I

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    .line 105
    iget-object v3, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 106
    invoke-virtual {p0}, Lcom/narvii/modulization/template/TemplatePickerFragment;->getFooterHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    iget-object v4, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-array v1, v1, [Landroid/view/View;

    .line 108
    iget-object v3, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 109
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method protected getFooterHeight()I
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$dimen;->template_picker_padding_h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 87
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected isActionBarTransparent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->transitionIds:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->transitionIds:Ljava/util/List;

    sget v1, Lcom/narvii/lib/R$id;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->transitionIds:Ljava/util/List;

    sget v1, Lcom/narvii/lib/R$id;->title:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->transitionIds:Ljava/util/List;

    sget v1, Lcom/narvii/lib/R$id;->subTitle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->matchParentIds:Ljava/util/List;

    .line 62
    iget-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->matchParentIds:Ljava/util/List;

    sget v1, Lcom/narvii/lib/R$id;->gradient:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance p1, Lcom/narvii/webview/AssetsLocalizationManager;

    const-string v0, "ndc_template"

    invoke-direct {p1, p0, v0}, Lcom/narvii/webview/AssetsLocalizationManager;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const-string v0, ".json"

    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/webview/AssetsLocalizationManager;->getLocalAssetFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 69
    :try_start_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    const-class v3, Lcom/narvii/modulization/template/AminoTemplate;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->templateList:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 72
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-void

    :goto_1
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 75
    throw v0
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method
