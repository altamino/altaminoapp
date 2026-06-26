.class public final Lcom/narvii/scene/service/ChooseSceneTemplateService;
.super Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;
.source "ChooseSceneTemplateService.kt"

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

.field public static final TAG:Ljava/lang/String; = "ChooseSceneTemplateService"


# instance fields
.field private from:I

.field private onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

.field private templateListFragment:Lcom/narvii/scene/TemplateListFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/service/ChooseSceneTemplateService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/service/ChooseSceneTemplateService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->Companion:Lcom/narvii/scene/service/ChooseSceneTemplateService$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x2

    .line 22
    iput p1, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->from:I

    return-void
.end method


# virtual methods
.method public final getFrom()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->from:I

    return v0
.end method

.method public final getOnChooseTemplateListener()Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    return-object v0
.end method

.method public final getTemplateListFragment()Lcom/narvii/scene/TemplateListFragment;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    return-object v0
.end method

.method public initBottomLayout()I
    .locals 1

    .line 28
    sget v0, Lcom/narvii/mediaeditor/R$layout;->layout_bottom_sheet:I

    return v0
.end method

.method public initFragment()Lcom/narvii/app/NVFragment;
    .locals 3

    .line 36
    new-instance v0, Lcom/narvii/scene/TemplateListFragment;

    invoke-direct {v0}, Lcom/narvii/scene/TemplateListFragment;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    iget v1, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->from:I

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    iget-object v1, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/narvii/scene/TemplateListFragment;->setOnChooseTemplateListener(Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;)V

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method public onBottomLayoutCreated(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->onBottomLayoutCreated(Landroid/view/View;)V

    .line 32
    sget v0, Lcom/narvii/mediaeditor/R$id;->out_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/scene/service/ChooseSceneTemplateService$onBottomLayoutCreated$1;

    invoke-direct {v0, p0, p0}, Lcom/narvii/scene/service/ChooseSceneTemplateService$onBottomLayoutCreated$1;-><init>(Lcom/narvii/scene/service/ChooseSceneTemplateService;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onChoose(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 2

    const-string v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "choose template >>>  url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/narvii/scene/model/TemplateConfig;->coverImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseSceneTemplateService"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;->onChoose(Lcom/narvii/scene/model/TemplateConfig;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    return-void
.end method

.method public onCollapsed()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/scene/TemplateListFragment;->hide()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;->onDismiss()V

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    return-void
.end method

.method public final setFrom(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->from:I

    return-void
.end method

.method public final setOnChooseTemplateListener(Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    return-void
.end method

.method public final setTemplateListFragment(Lcom/narvii/scene/TemplateListFragment;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    return-void
.end method

.method public show()V
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->init()V

    .line 47
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/scene/TemplateListFragment;->show()V

    :cond_0
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateRootView(Z)V

    .line 50
    new-instance v0, Lcom/narvii/scene/service/ChooseSceneTemplateService$show$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/service/ChooseSceneTemplateService$show$1;-><init>(Lcom/narvii/scene/service/ChooseSceneTemplateService;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/service/ChooseSceneTemplateService;->showContent()V

    :goto_0
    return-void
.end method

.method public showContent()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/scene/service/ChooseSceneTemplateService;->templateListFragment:Lcom/narvii/scene/TemplateListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/scene/TemplateListFragment;->show()V

    .line 60
    :cond_0
    invoke-super {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->showContent()V

    return-void
.end method
