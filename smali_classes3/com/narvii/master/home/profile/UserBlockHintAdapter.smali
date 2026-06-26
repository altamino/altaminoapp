.class public final Lcom/narvii/master/home/profile/UserBlockHintAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "UserBlockHintAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserBlockHintAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserBlockHintAdapter.kt\ncom/narvii/master/home/profile/UserBlockHintAdapter\n*L\n1#1,44:1\n*E\n"
.end annotation


# instance fields
.field private final isGlobalStyle:Z

.field private final uid:Ljava/lang/String;

.field private final userBlockService:Lcom/narvii/userblock/UserBlockService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->uid:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->isGlobalStyle:Z

    const-string p2, "block"

    .line 17
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ctx.getService(\"block\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/userblock/UserBlockService;

    iput-object p1, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/home/profile/UserBlockHintAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    iget-object v1, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->uid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->getItem(I)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Void;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0b06af

    .line 20
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090c01

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 22
    iget-boolean p3, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->isGlobalStyle:Z

    if-eqz p3, :cond_0

    const-string p3, "#80FFFFFF"

    goto :goto_0

    :cond_0
    const-string p3, "#B3C6C6CF"

    :goto_0
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p3, "hint"

    .line 23
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p3, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    iget-object v0, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->uid:Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0f11a3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 25
    :cond_1
    iget-object p3, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    iget-object v0, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->uid:Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0f11a2

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    const-string p3, ""

    .line 23
    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "createView<View>(R.layou\u2026wClickListener)\n        }"

    .line 20
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
