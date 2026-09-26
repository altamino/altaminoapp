.class public final Lcom/narvii/master/home/profile/UserBlockHintAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# instance fields
.field private final isGlobalStyle:Z

.field private final uid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userBlockService:Lcom/narvii/userblock/UserBlockService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->uid:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->isGlobalStyle:Z

    const-string p2, "block"

    .line 2
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getService(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/userblock/UserBlockService;

    iput-object p1, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ZILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/home/profile/UserBlockHintAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->uid:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->getItem(I)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Void;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
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
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0764

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0f24

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
    iget-boolean p3, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->isGlobalStyle:Z

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    const-string p3, "#80FFFFFF"

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    const-string p3, "#B3C6C6CF"

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 29
    move-result p3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    iget-object p3, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->uid:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-interface {p3, v0}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    .line 40
    move-result p3

    .line 41
    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object p3

    .line 47
    .line 48
    .line 49
    const v0, 0x7f1212ab

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object p3

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_1
    iget-object p3, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;->uid:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-interface {p3, v0}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    .line 62
    move-result p3

    .line 63
    .line 64
    if-eqz p3, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object p3

    .line 69
    .line 70
    .line 71
    const v0, 0x7f1212aa

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object p3

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_2
    const-string p3, ""

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    const-string p2, "apply(...)"

    .line 89
    .line 90
    .line 91
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    return-object p1
.end method
