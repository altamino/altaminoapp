.class public abstract Lcom/narvii/list/NVAdapter;
.super Landroid/widget/BaseAdapter;
.source "NVAdapter.java"

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

    .line 413
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/list/NVAdapter;->refreshCallbackTmp:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/narvii/list/NVAdapter;->backgroundColor:I

    .line 302
    new-instance v0, Lcom/narvii/list/NVAdapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/list/NVAdapter$1;-><init>(Lcom/narvii/list/NVAdapter;)V

    iput-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 309
    new-instance v0, Lcom/narvii/list/NVAdapter$2;

    invoke-direct {v0, p0}, Lcom/narvii/list/NVAdapter$2;-><init>(Lcom/narvii/list/NVAdapter;)V

    iput-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 103
    iput-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 104
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 105
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVAdapter;->listeners:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000()Lcom/narvii/util/statistics/TmpValue;
    .locals 1

    .line 72
    sget-object v0, Lcom/narvii/list/NVAdapter;->refreshCallbackTmp:Lcom/narvii/util/statistics/TmpValue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/narvii/list/NVAdapter;)Lcom/narvii/list/NVAdapter$RefreshMonitor;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/list/NVAdapter;Lcom/narvii/list/NVAdapter$RefreshMonitor;)Lcom/narvii/list/NVAdapter$RefreshMonitor;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    return-object p1
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

    if-nez p1, :cond_0

    .line 417
    sget-object p1, Lcom/narvii/list/NVAdapter;->refreshCallbackTmp:Lcom/narvii/util/statistics/TmpValue;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    return-void

    .line 421
    :cond_0
    new-instance v0, Lcom/narvii/list/NVAdapter$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/list/NVAdapter$3;-><init>(Lcom/narvii/list/NVAdapter;Lcom/narvii/util/Callback;I)V

    invoke-static {v0, p3, p4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 429
    sget-object p2, Lcom/narvii/list/NVAdapter;->refreshCallbackTmp:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {p2, p1, p3, p4}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method public addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V
    .locals 1

    const/4 v0, 0x1

    .line 605
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;Z)V

    return-void
.end method

.method public addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 613
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    if-nez p2, :cond_1

    .line 614
    iput-object p1, p0, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    goto :goto_0

    :cond_1
    const-string p2, "already have a main impression collector"

    .line 616
    invoke-static {p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 619
    :cond_2
    :goto_0
    invoke-virtual {p1, p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->setAdapter(Lcom/narvii/logging/Area;)V

    .line 620
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v0, p2, Lcom/narvii/list/NVListFragment;

    if-eqz v0, :cond_3

    .line 621
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->noImpression()Z

    move-result p2

    if-nez p2, :cond_5

    .line 622
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    check-cast p2, Lcom/narvii/list/NVListFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVListFragment;->addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    goto :goto_1

    .line 624
    :cond_3
    instance-of p2, p2, Lcom/narvii/paging/NVRecyclerViewFragment;

    if-eqz p2, :cond_4

    .line 625
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->noImpression()Z

    move-result p2

    if-nez p2, :cond_5

    .line 626
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    check-cast p2, Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    goto :goto_1

    :cond_4
    const-string p1, "parent context is not NVListFragment"

    .line 629
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public addOnItemClickListener(Lcom/narvii/list/OnItemClickListener;)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->listeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->listeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 193
    sget p3, Lcom/narvii/lib/R$layout;->normal_error_list_item:I

    const-string v0, "error"

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 195
    sget p2, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 197
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const p3, -0xbbbbbc

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, -0x1

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-object p1
.end method

.method public createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 183
    sget v0, Lcom/narvii/lib/R$layout;->normal_loading_list_item:I

    const-string v1, "loading"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 185
    sget p2, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 186
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, -0x99999a

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    sget p2, Lcom/narvii/lib/R$id;->spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/SpinningView;

    .line 188
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const v1, -0x777778

    :cond_3
    :goto_2
    invoke-virtual {p2, v1}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

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

    .line 207
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

    .line 220
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p3

    .line 221
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p4, :cond_2

    .line 223
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->supportNVTheme()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of p3, p2, Lcom/narvii/app/theme/NVThemeOwner;

    if-eqz p3, :cond_3

    .line 226
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

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "__adapter"

    .line 398
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "__adapterClass"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .line 261
    instance-of v0, p3, Lcom/narvii/model/StrategyObject;

    if-eqz v0, :cond_0

    .line 262
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/StrategyObject;

    invoke-interface {v0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->listeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/narvii/list/OnItemClickListener;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 265
    invoke-interface/range {v2 .. v7}, Lcom/narvii/list/OnItemClickListener;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 268
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 273
    invoke-virtual/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public ensureLogin(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v0, v0, Lcom/narvii/list/NVListFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "__adapter"

    .line 387
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__adapterClass"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    check-cast v0, Lcom/narvii/list/NVListFragment;

    .line 391
    invoke-virtual {v0, p1, p2}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "adapter"

    const-string p2, "context is not NVListFragment"

    .line 393
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

    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->getImpressionObjectInfo(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object v0

    .line 654
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p3

    if-nez v0, :cond_0

    .line 655
    instance-of v1, p2, Lcom/narvii/model/NVObject;

    if-eqz v1, :cond_0

    .line 656
    check-cast p2, Lcom/narvii/model/NVObject;

    invoke-virtual {p3, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {p1, p3, v0}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    :cond_1
    return-object p3
.end method

.method protected getClickEventBuilder(Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 665
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContextId()J
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getImpressionObjectInfo(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 643
    invoke-virtual {p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method protected getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->getImpressionObjectInfo(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object p1

    return-object p1
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 155
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

    .line 145
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 249
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    goto :goto_0

    .line 250
    :cond_0
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    :goto_0
    return-void
.end method

.method public isDarkNVTheme()Z
    .locals 2

    .line 714
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->supportNVTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/theme/NVThemeOwner;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/app/theme/NVThemeOwner;

    invoke-interface {v0}, Lcom/narvii/app/theme/NVThemeOwner;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlobalInteractionScope()Z
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVInteractionScope;

    if-eqz v1, :cond_0

    .line 708
    check-cast v0, Lcom/narvii/app/NVInteractionScope;

    invoke-interface {v0}, Lcom/narvii/app/NVInteractionScope;->isGlobalInteractionScope()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 164
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public logClickEvent(Lcom/narvii/logging/ActSemantic;)V
    .locals 1

    const/4 v0, 0x0

    .line 689
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;Z)V

    return-void
.end method

.method public logClickEvent(Lcom/narvii/logging/ActSemantic;Z)V
    .locals 0

    .line 693
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 695
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    .line 697
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V
    .locals 1

    const/4 v0, 0x0

    .line 669
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;Z)V

    return-void
.end method

.method public logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;Z)V
    .locals 0

    .line 673
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 675
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    .line 677
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public logClickEventAttachObject(Lcom/narvii/model/NVObject;Lcom/narvii/logging/ActSemantic;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 685
    :cond_0
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method protected markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/list/NVAdapter;->markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;I)V

    return-void
.end method

.method protected markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 570
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->status()I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    const-string p2, "account"

    .line 571
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 572
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 573
    invoke-virtual {p2}, Lcom/narvii/model/User;->isCurator()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 574
    sget p3, Lcom/narvii/lib/R$drawable;->disabled_cell_bg:I

    .line 577
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

    .line 116
    instance-of v0, p0, Lcom/narvii/notification/NotificationListener;

    if-eqz v0, :cond_0

    const-string v0, "notification"

    .line 117
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 118
    move-object v1, p0

    check-cast v1, Lcom/narvii/notification/NotificationListener;

    invoke-virtual {v0, p0, v1}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/app/NVContext;Lcom/narvii/notification/NotificationListener;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 4

    .line 123
    instance-of v0, p0, Lcom/narvii/notification/NotificationListener;

    if-eqz v0, :cond_4

    const-string v0, "notification"

    .line 124
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 126
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 128
    instance-of v3, v1, Lcom/narvii/app/NVFragment;

    if-eqz v3, :cond_0

    .line 129
    check-cast v1, Lcom/narvii/app/NVFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v1

    goto :goto_1

    .line 132
    :cond_0
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 137
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    move v1, v2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 139
    :cond_3
    :goto_2
    invoke-virtual {v0, p0, v1}, Lcom/narvii/notification/NotificationCenter;->unregisterListener(Lcom/narvii/app/NVContext;Z)V

    :cond_4
    return-void
.end method

.method public onErrorRetry()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

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

    .line 279
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 280
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 281
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

    .line 284
    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v2, p3

    move-object v4, p2

    .line 285
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

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

    .line 292
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p4

    if-eq p4, p0, :cond_0

    .line 293
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p4

    invoke-interface {p4, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 294
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 297
    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v2, p3

    move-object v4, p2

    .line 298
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

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

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 9

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    move-object v7, p1

    move-object v2, v0

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ge v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    .line 320
    instance-of v3, v2, Landroid/widget/ListView;

    if-eqz v3, :cond_5

    .line 321
    check-cast v2, Landroid/widget/ListView;

    .line 322
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 324
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_2

    .line 325
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    move-result p1

    return p1

    .line 329
    :cond_2
    invoke-virtual {v2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_3

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not in ListView"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    return v1

    .line 334
    :cond_3
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz p2, :cond_4

    .line 336
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 338
    :cond_4
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 342
    :cond_5
    move-object v7, v2

    check-cast v7, Landroid/view/View;

    .line 343
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    const/4 p1, 0x0

    const-wide/16 v0, 0x3e8

    .line 168
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/narvii/list/NVAdapter;->refreshCallbackLater(Lcom/narvii/util/Callback;IJ)V

    return-void
.end method

.method protected refreshMonitorAbort()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->cancel()V

    :cond_0
    return-void
.end method

.method protected refreshMonitorEnd()V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->end()V

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

    .line 435
    sget-object v0, Lcom/narvii/list/NVAdapter;->refreshCallbackTmp:Lcom/narvii/util/statistics/TmpValue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "api"

    .line 439
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 440
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    if-nez v1, :cond_1

    .line 441
    new-instance v1, Lcom/narvii/list/NVAdapter$RefreshMonitor;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/list/NVAdapter$RefreshMonitor;-><init>(Lcom/narvii/list/NVAdapter;ILcom/narvii/util/Callback;)V

    iput-object v1, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    goto :goto_1

    .line 442
    :cond_1
    iget v2, v1, Lcom/narvii/list/NVAdapter$RefreshMonitor;->status:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget-object v1, v1, Lcom/narvii/list/NVAdapter$RefreshMonitor;->callback:Lcom/narvii/util/Callback;

    if-eq v1, p2, :cond_2

    goto :goto_0

    :cond_2
    if-eq v1, p2, :cond_4

    const-string p1, "refreshMonitor callback not match"

    .line 446
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 443
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->cancel()V

    .line 444
    new-instance v1, Lcom/narvii/list/NVAdapter$RefreshMonitor;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/list/NVAdapter$RefreshMonitor;-><init>(Lcom/narvii/list/NVAdapter;ILcom/narvii/util/Callback;)V

    iput-object v1, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    .line 448
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->refreshMonitor:Lcom/narvii/list/NVAdapter$RefreshMonitor;

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter$RefreshMonitor;->start(Lcom/narvii/util/http/ApiService;)V

    return-void
.end method

.method public removeOnItemClickListener(Lcom/narvii/list/OnItemClickListener;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->listeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected saveInstanceState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    const-string v0, "notification"

    .line 243
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 244
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 94
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->setDarkTheme(ZI)V

    return-void
.end method

.method public setDarkTheme(ZI)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 99
    iput p2, p0, Lcom/narvii/list/NVAdapter;->backgroundColor:I

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 593
    :cond_0
    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 594
    invoke-static {p1, p0}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

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

    if-nez p1, :cond_0

    return-void

    .line 601
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_extra_map:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
