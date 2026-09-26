.class public Lcom/narvii/modulization/template/TemplatePickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/modulization/template/TemplatePickerFragment$TopAdapter;,
        Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->expandMap:Landroid/util/SparseArray;

    .line 11
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/modulization/template/TemplatePickerFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->matchParentIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/modulization/template/TemplatePickerFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->transitionIds:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 19
    .line 20
    new-array v3, v1, [Landroid/view/View;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/modulization/template/TemplatePickerFragment;->isActionBarTransparent()Z

    .line 24
    move-result v4

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    new-instance v4, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    .line 35
    invoke-direct {v4, v5}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    new-instance v4, Lcom/narvii/widget/StatusBarPlaceHolder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    .line 45
    invoke-direct {v4, v5}, Lcom/narvii/widget/StatusBarPlaceHolder;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    :goto_0
    aput-object v4, v3, v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    .line 55
    :cond_1
    new-instance v0, Lcom/narvii/modulization/template/TemplatePickerFragment$TopAdapter;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p0, p0}, Lcom/narvii/modulization/template/TemplatePickerFragment$TopAdapter;-><init>(Lcom/narvii/modulization/template/TemplatePickerFragment;Lcom/narvii/app/NVContext;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    .line 63
    new-instance v0, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;

    .line 64
    .line 65
    const-class v3, Lcom/narvii/modulization/template/AminoTemplate;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->templateList:Ljava/util/List;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, p0, p0, v3, v4}, Lcom/narvii/modulization/template/TemplatePickerFragment$TemplateAdapter;-><init>(Lcom/narvii/modulization/template/TemplatePickerFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    .line 75
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    .line 76
    .line 77
    .line 78
    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    sget v4, Lcom/narvii/lib/R$layout;->adapter_layout_placeholder:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 92
    move-result-object v5

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    iput-object v3, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/modulization/template/TemplatePickerFragment;->getFooterHeight()I

    .line 106
    move-result v4

    .line 107
    .line 108
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    .line 110
    iget-object v4, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    new-array v1, v1, [Landroid/view/View;

    .line 116
    .line 117
    iget-object v3, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->footerView:Landroid/view/View;

    .line 118
    .line 119
    aput-object v3, v1, v2

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    return-object p1
.end method

.method protected getFooterHeight()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$dimen;->template_picker_padding_h:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 14
    move-result v0

    .line 15
    return v0
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->transitionIds:Ljava/util/List;

    .line 8
    .line 9
    sget v1, Lcom/narvii/lib/R$id;->icon:I

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->transitionIds:Ljava/util/List;

    .line 19
    .line 20
    sget v1, Lcom/narvii/lib/R$id;->title:I

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->transitionIds:Ljava/util/List;

    .line 30
    .line 31
    sget v1, Lcom/narvii/lib/R$id;->subTitle:I

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->matchParentIds:Ljava/util/List;

    .line 46
    .line 47
    sget v1, Lcom/narvii/lib/R$id;->gradient:I

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    .line 59
    new-instance p1, Lcom/narvii/webview/AssetsLocalizationManager;

    .line 60
    .line 61
    .line 62
    const-string/jumbo v0, "ndc_template"

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, p0, v0}, Lcom/narvii/webview/AssetsLocalizationManager;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 66
    .line 67
    const-string v0, ".json"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/narvii/webview/AssetsLocalizationManager;->getLocalAssetFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    :try_start_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    const-class v2, Ljava/util/ArrayList;

    .line 80
    .line 81
    const-class v3, Lcom/narvii/modulization/template/AminoTemplate;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    check-cast v0, Ljava/util/List;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/narvii/modulization/template/TemplatePickerFragment;->templateList:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto :goto_2

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .line 102
    .line 103
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    goto :goto_0

    .line 105
    :goto_1
    return-void

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 109
    throw v0
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method
