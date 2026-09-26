.class public final Lcom/narvii/scene/service/ChooseSceneTemplateService;
.super Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/service/ChooseSceneTemplateService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/service/ChooseSceneTemplateService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ChooseSceneTemplateService"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private from:I

.field private onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private templateListFragment:Lcom/narvii/scene/TemplateListFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/service/ChooseSceneTemplateService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/service/ChooseSceneTemplateService$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->Companion:Lcom/narvii/scene/service/ChooseSceneTemplateService$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    const/4 p1, 0x2

    .line 10
    .line 11
    iput p1, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->from:I

    .line 12
    return-void
.end method

.method public static synthetic b(Lcom/narvii/scene/service/ChooseSceneTemplateService;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/service/ChooseSceneTemplateService;->show$lambda$0(Lcom/narvii/scene/service/ChooseSceneTemplateService;)V

    return-void
.end method

.method private static final show$lambda$0(Lcom/narvii/scene/service/ChooseSceneTemplateService;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateBottomSheet(I)V

    .line 11
    return-void
.end method


# virtual methods
.method public final getFrom()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->from:I

    return v0
.end method

.method public final getOnChooseTemplateListener()Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    return-object v0
.end method

.method public final getTemplateListFragment()Lcom/narvii/scene/TemplateListFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    return-object v0
.end method

.method public initBottomLayout()I
    .locals 1

    sget v0, Lcom/narvii/mediaeditor/R$layout;->layout_bottom_sheet:I

    return v0
.end method

.method public initFragment()Lcom/narvii/app/NVFragment;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/scene/TemplateListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/scene/TemplateListFragment;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    .line 8
    .line 9
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    const-string v1, "from"

    .line 15
    .line 16
    iget v2, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->from:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0, p0}, Lcom/narvii/scene/TemplateListFragment;->setOnChooseTemplateListener(Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;)V

    .line 36
    .line 37
    :goto_1
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 41
    return-object v0
.end method

.method public onBottomLayoutCreated(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->onBottomLayoutCreated(Landroid/view/View;)V

    .line 10
    .line 11
    sget v0, Lcom/narvii/mediaeditor/R$id;->out_area:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/scene/service/ChooseSceneTemplateService$onBottomLayoutCreated$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/narvii/scene/service/ChooseSceneTemplateService$onBottomLayoutCreated$1;-><init>(Lcom/narvii/scene/service/ChooseSceneTemplateService;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method

.method public onChoose(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 2
    .param p1    # Lcom/narvii/scene/model/TemplateConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "template"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v1, "choose template >>>  url = "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/narvii/scene/model/TemplateConfig;->coverImageUrl:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "ChooseSceneTemplateService"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, p1}, Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;->onChoose(Lcom/narvii/scene/model/TemplateConfig;)V

    .line 38
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    .line 4
    return-void
.end method

.method public onCollapsed()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/scene/TemplateListFragment;->hide()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;->onDismiss()V

    .line 15
    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    .line 4
    return-void
.end method

.method public final setFrom(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->from:I

    return-void
.end method

.method public final setOnChooseTemplateListener(Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    return-void
.end method

.method public final setTemplateListFragment(Lcom/narvii/scene/TemplateListFragment;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/TemplateListFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->getRootView()Landroid/view/ViewGroup;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->init()V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/scene/TemplateListFragment;->show()V

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateRootView(Z)V

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/scene/service/b;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/scene/service/b;-><init>(Lcom/narvii/scene/service/ChooseSceneTemplateService;)V

    .line 26
    .line 27
    const-wide/16 v1, 0x64

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/service/ChooseSceneTemplateService;->showContent()V

    .line 35
    :goto_0
    return-void
.end method

.method public showContent()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/scene/TemplateListFragment;->show()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->showContent()V

    .line 11
    return-void
.end method
