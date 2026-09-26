.class public abstract Lcom/narvii/list/NVAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/NVContext;
.implements Lcom/narvii/list/OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/narvii/logging/Area;
.implements Lcom/narvii/app/NVInteractionScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/list/NVAdapter$RefreshMonitor;
    }
.end annotation


# static fields
.field public static final REFRESH_FLAG_RETRY:I = 0x2

.field public static final REFRESH_FLAG_SILENT:I = 0x100

.field public static final REFRESH_FLAG_SWIPE:I = 0x1

.field public static final REQUEST_RESULT_CANCEL:I = 0x2

.field public static final REQUEST_RESULT_FAIL:I = 0x1

.field public static final REQUEST_RESULT_FINISH:I

.field private static final refreshCallbackTmp:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected backgroundColor:I

.field protected final context:Lcom/narvii/app/NVContext;

.field protected darkTheme:Z

.field protected final inflater:Landroid/view/LayoutInflater;

.field protected final listeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/list/OnItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private logEventService:Lcom/narvii/logging/service/LogEventService;

.field protected mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

.field private refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

.field public final subviewClickListener:Landroid/view/View$OnClickListener;

.field public final subviewLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/list/NVAdapter;->refreshCallbackTmp:Lcom/narvii/util/statistics/TmpValue;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/list/NVAdapter;->backgroundColor:I

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/list/a;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/list/a;-><init>(Lcom/narvii/list/NVAdapter;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/list/b;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/list/b;-><init>(Lcom/narvii/list/NVAdapter;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 33
    .line 34
    new-instance p1, Ljava/util/LinkedList;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/list/NVAdapter;->listeners:Ljava/util/LinkedList;

    .line 40
    return-void
.end method

.method public static synthetic a(Lcom/narvii/list/NVAdapter;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;->lambda$new$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/narvii/list/NVAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/list/NVAdapter;)Lcom/narvii/list/NVAdapter$RefreshMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/list/NVAdapter;Lcom/narvii/list/NVAdapter$RefreshMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    return-void
.end method

.method static bridge synthetic e()Lcom/narvii/util/statistics/TmpValue;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/list/NVAdapter;->refreshCallbackTmp:Lcom/narvii/util/statistics/TmpValue;

    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    .line 5
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method private refreshCallbackLater(Lcom/narvii/util/Callback;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;IJ)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/narvii/list/NVAdapter;->refreshCallbackTmp:Lcom/narvii/util/statistics/TmpValue;

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/narvii/list/NVAdapter$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/list/NVAdapter$1;-><init>(Lcom/narvii/list/NVAdapter;Lcom/narvii/util/Callback;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p3, p4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 18
    .line 19
    sget-object p2, Lcom/narvii/list/NVAdapter;->refreshCallbackTmp:Lcom/narvii/util/statistics/TmpValue;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1, p3, p4}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 23
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;Z)V

    return-void
.end method

.method public addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    goto :goto_0

    :cond_1
    const-string p2, "already have a main impression collector"

    .line 2
    invoke-static {p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 3
    :cond_2
    :goto_0
    invoke-virtual {p1, p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->setAdapter(Lcom/narvii/logging/Area;)V

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 4
    instance-of v0, p2, Lcom/narvii/list/NVListFragment;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->noImpression()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 6
    check-cast p2, Lcom/narvii/list/NVListFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVListFragment;->addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    goto :goto_1

    .line 7
    :cond_3
    instance-of p2, p2, Lcom/narvii/paging/NVRecyclerViewFragment;

    if-eqz p2, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->noImpression()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 9
    check-cast p2, Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    goto :goto_1

    :cond_4
    const-string p1, "parent context is not NVListFragment"

    .line 10
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public addOnItemClickListener(Lcom/narvii/list/OnItemClickListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->listeners:Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->listeners:Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->normal_error_list_item:I

    .line 3
    .line 4
    const-string v0, "error"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    sget p2, Lcom/narvii/lib/R$id;->text:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 21
    .line 22
    if-nez p3, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 26
    move-result p3

    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    const p3, -0xbbbbbc

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 p3, -0x1

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    :cond_2
    return-object p1
.end method

.method public createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->normal_loading_list_item:I

    .line 3
    .line 4
    const-string v1, "loading"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    sget p2, Lcom/narvii/lib/R$id;->text:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 19
    const/4 v1, -0x1

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    const v0, -0x99999a

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    move v0, v1

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    sget p2, Lcom/narvii/lib/R$id;->spinner:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    check-cast p2, Lcom/narvii/widget/SpinningView;

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    goto :goto_2

    .line 56
    .line 57
    .line 58
    :cond_2
    const v1, -0x777778

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_2
    invoke-virtual {p2, v1}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 62
    return-object p1
.end method

.method public createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p3

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p3, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p4, :cond_2

    .line 4
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->supportNVTheme()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of p3, p2, Lcom/narvii/app/theme/NVThemeOwner;

    if-eqz p3, :cond_3

    .line 6
    sget-object p3, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    check-cast p2, Lcom/narvii/app/theme/NVThemeOwner;

    invoke-interface {p2}, Lcom/narvii/app/theme/NVThemeOwner;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    :cond_3
    return-object p1
.end method

.method dispatchLoginResult(ZLandroid/content/Intent;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string v1, "__adapter"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v1, "__adapterClass"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_0
    return v0
.end method

.method public dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/StrategyObject;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/StrategyObject;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->listeners:Ljava/util/LinkedList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    move-object v2, v1

    .line 31
    .line 32
    check-cast v2, Lcom/narvii/list/OnItemClickListener;

    .line 33
    move-object v3, p1

    .line 34
    move v4, p2

    .line 35
    move-object v5, p3

    .line 36
    move-object v6, p4

    .line 37
    move-object v7, p5

    .line 38
    .line 39
    .line 40
    invoke-interface/range {v2 .. v7}, Lcom/narvii/list/OnItemClickListener;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    const/4 p1, 0x1

    .line 45
    return p1

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public ensureLogin(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 2
    instance-of v0, v0, Lcom/narvii/list/NVListFragment;

    if-eqz v0, :cond_0

    const-string v0, "__adapter"

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__adapterClass"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 5
    check-cast v0, Lcom/narvii/list/NVListFragment;

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "adapter"

    const-string p2, "context is not NVListFragment"

    .line 7
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getClickEventBuilder(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->getImpressionObjectInfo(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p3

    if-nez v0, :cond_0

    .line 4
    instance-of v1, p2, Lcom/narvii/model/NVObject;

    if-eqz v1, :cond_0

    .line 5
    check-cast p2, Lcom/narvii/model/NVObject;

    invoke-virtual {p3, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1, p3, v0}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    :cond_1
    return-object p3
.end method

.method protected getClickEventBuilder(Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getContextId()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContextId()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method protected getImpressionObjectInfo(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method protected getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->getImpressionObjectInfo(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object p1

    return-object p1
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    instance-of v0, v0, Landroid/app/Activity;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Landroid/app/Activity;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public isDarkNVTheme()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->supportNVTheme()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    instance-of v1, v0, Lcom/narvii/app/theme/NVThemeOwner;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/theme/NVThemeOwner;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/app/theme/NVThemeOwner;->isDarkNVTheme()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public isGlobalInteractionScope()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVInteractionScope;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVInteractionScope;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/app/NVInteractionScope;->isGlobalInteractionScope()Z

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public logClickEvent(Lcom/narvii/logging/ActSemantic;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;Z)V

    return-void
.end method

.method public logClickEvent(Lcom/narvii/logging/ActSemantic;Z)V
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;Z)V

    return-void
.end method

.method public logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public logClickEventAttachObject(Lcom/narvii/model/NVObject;Lcom/narvii/logging/ActSemantic;)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 15
    return-void
.end method

.method protected markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/list/NVAdapter;->markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;I)V

    return-void
.end method

.method protected markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->status()I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    const-string p2, "account"

    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 4
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/narvii/model/User;->isCurator()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p3, Lcom/narvii/lib/R$drawable;->disabled_cell_bg:I

    .line 6
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method protected noImpression()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    instance-of v0, p0, Lcom/narvii/notification/NotificationListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "notification"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 13
    move-object v1, p0

    .line 14
    .line 15
    check-cast v1, Lcom/narvii/notification/NotificationListener;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/app/NVContext;Lcom/narvii/notification/NotificationListener;)V

    .line 19
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 4

    .line 1
    .line 2
    instance-of v0, p0, Lcom/narvii/notification/NotificationListener;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    const-string v0, "notification"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 15
    :goto_0
    const/4 v2, 0x0

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    instance-of v3, v1, Lcom/narvii/app/NVFragment;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    .line 27
    move-result v1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v1, v2

    .line 35
    .line 36
    :goto_1
    if-nez v1, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    instance-of v3, v1, Landroid/app/Activity;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    check-cast v1, Landroid/app/Activity;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 52
    move-result v2

    .line 53
    :cond_2
    move v1, v2

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {v0, p0, v1}, Lcom/narvii/notification/NotificationCenter;->unregisterListener(Lcom/narvii/app/NVContext;Z)V

    .line 57
    :cond_4
    return-void
.end method

.method public onErrorRetry()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 6
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v2, p3

    move-object v4, p2

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    if-eq p4, p0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 10
    move-result-object p4

    .line 11
    .line 12
    .line 13
    invoke-interface {p4, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 18
    move-result-object p1

    .line 19
    move-object v1, p1

    .line 20
    .line 21
    check-cast v1, Landroid/widget/ListAdapter;

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v0, p0

    .line 24
    move v2, p3

    .line 25
    move-object v4, p2

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-interface {p0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    const/4 v5, 0x0

    .line 36
    move-object v0, p0

    .line 37
    move-object v1, p0

    .line 38
    move v2, p3

    .line 39
    move-object v4, p2

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    return-object v0
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v7, p1

    .line 7
    move v2, v1

    .line 8
    .line 9
    :goto_0
    const/16 v3, 0x8

    .line 10
    const/4 v4, 0x1

    .line 11
    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    move v3, v4

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move v3, v1

    .line 16
    .line 17
    :goto_1
    if-eqz v0, :cond_1

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    move v4, v1

    .line 20
    :goto_2
    and-int/2addr v3, v4

    .line 21
    .line 22
    if-eqz v3, :cond_6

    .line 23
    .line 24
    instance-of v3, v0, Landroid/widget/ListView;

    .line 25
    .line 26
    if-eqz v3, :cond_5

    .line 27
    .line 28
    check-cast v0, Landroid/widget/ListView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    if-eq v2, p0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    instance-of v2, v2, Lcom/narvii/list/NVAdapter;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 57
    move-result v5

    .line 58
    const/4 v2, -0x1

    .line 59
    .line 60
    if-ne v5, v2, :cond_3

    .line 61
    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p1, " is not in ListView"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 81
    return v1

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-interface {v1, v5}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 89
    move-result-object v6

    .line 90
    .line 91
    if-eqz p2, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 95
    move-result-object v4

    .line 96
    move-object v3, p0

    .line 97
    move-object v8, p1

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 101
    move-result p1

    .line 102
    return p1

    .line 103
    .line 104
    .line 105
    :cond_4
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 106
    move-result-object v4

    .line 107
    move-object v3, p0

    .line 108
    move-object v8, p1

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 112
    move-result p1

    .line 113
    return p1

    .line 114
    :cond_5
    move-object v7, v0

    .line 115
    .line 116
    check-cast v7, Landroid/view/View;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_6
    return v1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    const-wide/16 v0, 0x3e8

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/narvii/list/NVAdapter;->refreshCallbackLater(Lcom/narvii/util/Callback;IJ)V

    .line 7
    return-void
.end method

.method protected refreshMonitorAbort()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->cancel()V

    .line 8
    :cond_0
    return-void
.end method

.method protected refreshMonitorEnd()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->end()V

    .line 8
    :cond_0
    return-void
.end method

.method protected refreshMonitorStart(ILcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/list/NVAdapter;->refreshCallbackTmp:Lcom/narvii/util/statistics/TmpValue;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    const-string v0, "api"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/list/NVAdapter$RefreshMonitor;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/list/NVAdapter$RefreshMonitor;-><init>(Lcom/narvii/list/NVAdapter;ILcom/narvii/util/Callback;)V

    .line 27
    .line 28
    iput-object v1, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    iget v2, v1, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    .line 32
    const/4 v3, 0x2

    .line 33
    .line 34
    if-eq v2, v3, :cond_3

    .line 35
    .line 36
    iget-object v2, v1, Lcom/narvii/list/NVAdapter$RefreshMonitor;->callback:Lcom/narvii/util/Callback;

    .line 37
    .line 38
    if-eq v2, p2, :cond_2

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_2
    if-eq v2, p2, :cond_4

    .line 42
    .line 43
    const-string p1, "refreshMonitor callback not match"

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->cancel()V

    .line 51
    .line 52
    new-instance v1, Lcom/narvii/list/NVAdapter$RefreshMonitor;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/list/NVAdapter$RefreshMonitor;-><init>(Lcom/narvii/list/NVAdapter;ILcom/narvii/util/Callback;)V

    .line 56
    .line 57
    iput-object v1, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    .line 58
    .line 59
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->start(Lcom/narvii/util/http/ApiService;)V

    .line 63
    return-void
.end method

.method public removeOnItemClickListener(Lcom/narvii/list/OnItemClickListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->listeners:Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method protected saveInstanceState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "notification"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 12
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->setDarkTheme(ZI)V

    return-void
.end method

.method public setDarkTheme(ZI)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    iput p2, p0, Lcom/narvii/list/NVAdapter;->backgroundColor:I

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/list/NVAdapter;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 6
    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p0}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    .line 10
    return-void
.end method

.method protected tagExtraMap(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_extra_map:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    return-void
.end method
