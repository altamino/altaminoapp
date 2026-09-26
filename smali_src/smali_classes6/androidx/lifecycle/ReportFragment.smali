.class public Landroidx/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;,
        Landroidx/lifecycle/ReportFragment$Companion;,
        Landroidx/lifecycle/ReportFragment$LifecycleCallbacks;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/lifecycle/ReportFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REPORT_FRAGMENT_TAG:Ljava/lang/String; = "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private processListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/ReportFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/ReportFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/lifecycle/ReportFragment;->Companion:Landroidx/lifecycle/ReportFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 4
    return-void
.end method

.method private final a(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1d

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/lifecycle/ReportFragment;->Companion:Landroidx/lifecycle/ReportFragment$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "activity"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/ReportFragment$Companion;->a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 21
    :cond_0
    return-void
.end method

.method private final b(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onCreate()V

    .line 6
    :cond_0
    return-void
.end method

.method private final c(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onResume()V

    .line 6
    :cond_0
    return-void
.end method

.method private final d(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onStart()V

    .line 6
    :cond_0
    return-void
.end method

.method public static final e(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/lifecycle/ReportFragment;->Companion:Landroidx/lifecycle/ReportFragment$Companion;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ReportFragment$Companion;->c(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final f(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/ReportFragment;->processListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/lifecycle/ReportFragment;->processListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 9
    .line 10
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 14
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 4
    .line 5
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/lifecycle/ReportFragment;->processListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 12
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 4
    .line 5
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 9
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->processListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->c(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 9
    .line 10
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 14
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->processListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->d(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 9
    .line 10
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 14
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 4
    .line 5
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 9
    return-void
.end method
