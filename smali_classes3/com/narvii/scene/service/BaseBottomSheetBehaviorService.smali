.class public abstract Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;
.super Ljava/lang/Object;
.source "BaseBottomSheetBehaviorService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseBottomSheetBehaviorService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseBottomSheetBehaviorService.kt\ncom/narvii/scene/service/BaseBottomSheetBehaviorService\n*L\n1#1,150:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private behavior:Landroid/support/design/widget/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BottomSheetBehavior<",
            "Lcom/github/mmin18/widget/FlexLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final bottomSheetCallback$delegate:Lkotlin/Lazy;

.field private bottomState:Ljava/lang/Integer;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "bottomSheetCallback"

    const-string v4, "getBottomSheetCallback()Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->ctx:Lcom/narvii/app/NVContext;

    .line 24
    new-instance p1, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;

    invoke-direct {p1, p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$bottomSheetCallback$2;-><init>(Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->bottomSheetCallback$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    const/4 v0, 0x4

    .line 147
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateBottomSheet(I)V

    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->ctx:Lcom/narvii/app/NVContext;

    .line 136
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 137
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected final getBehavior()Landroid/support/design/widget/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/design/widget/BottomSheetBehavior<",
            "Lcom/github/mmin18/widget/FlexLayout;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    return-object v0
.end method

.method protected final getBottomSheetCallback()Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->bottomSheetCallback$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    return-object v0
.end method

.method protected final getBottomState()Ljava/lang/Integer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->bottomState:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method protected final getRootView()Landroid/view/ViewGroup;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final init()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 55
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 57
    sget v2, Lcom/narvii/mediaeditor/R$id;->drawer_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x1020002

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    :goto_0
    if-eqz v2, :cond_9

    .line 61
    invoke-virtual {p0, v2}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->initRootView(Landroid/view/ViewGroup;)V

    .line 62
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->initFragment()Lcom/narvii/app/NVFragment;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->ctx:Lcom/narvii/app/NVContext;

    .line 65
    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lcom/narvii/mediaeditor/R$id;->bottom_sheet_container:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_3
    instance-of v0, v2, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_4

    check-cast v2, Lcom/narvii/app/NVActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lcom/narvii/mediaeditor/R$id;->bottom_sheet_container:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 71
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    sget v2, Lcom/narvii/mediaeditor/R$id;->behavior_layout:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 72
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 73
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_6

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 74
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->getBottomSheetCallback()Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 73
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 72
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 71
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_9
    :goto_2
    return-void
.end method

.method public abstract initBottomLayout()I
.end method

.method public abstract initFragment()Lcom/narvii/app/NVFragment;
.end method

.method public initRootView(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->initBottomLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->onBottomLayoutCreated(Landroid/view/View;)V

    .line 82
    iput-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    .line 83
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 79
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isShowing()Z
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->bottomState:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public onBottomLayoutCreated(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCollapsed()V
    .locals 0

    return-void
.end method

.method protected final setBehavior(Landroid/support/design/widget/BottomSheetBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BottomSheetBehavior<",
            "Lcom/github/mmin18/widget/FlexLayout;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    return-void
.end method

.method protected final setBottomState(Ljava/lang/Integer;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->bottomState:Ljava/lang/Integer;

    return-void
.end method

.method protected final setRootView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    return-void
.end method

.method public show()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->init()V

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateRootView(Z)V

    .line 97
    new-instance v0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$show$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService$show$1;-><init>(Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->showContent()V

    :goto_0
    return-void
.end method

.method public showContent()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateRootView(Z)V

    const/4 v0, 0x3

    .line 107
    invoke-virtual {p0, v0}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->updateBottomSheet(I)V

    return-void
.end method

.method protected final updateBottomSheet(I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->behavior:Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    :cond_0
    return-void
.end method

.method protected final updateRootView(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 118
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 122
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
