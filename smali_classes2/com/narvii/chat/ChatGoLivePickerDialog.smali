.class public final Lcom/narvii/chat/ChatGoLivePickerDialog;
.super Lcom/narvii/chat/BottomPopupDialog;
.source "ChatGoLivePickerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;,
        Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;,
        Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;,
        Lcom/narvii/chat/ChatGoLivePickerDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/ChatGoLivePickerDialog$Companion;

.field public static final MODE_SCALE_RATE:F = 0.6666667f

.field public static final MODE_WIDTH_HEIGHT_RATIO:F = 1.459854f

.field public static final MODE_WIDTH_RATE_TO_SCREEN_WIDTH:F = 0.8f


# instance fields
.field private final adapter:Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

.field private final agreeIV:Landroid/widget/ImageView;

.field private final enabledModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private liveModePickCallback:Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;

.field private offsetX:I

.field private final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private requireApprovalToSpeak:Z

.field private final screenWidth:I

.field private selectedMode:I

.field private final snapHelper:Landroid/support/v7/widget/PagerSnapHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/ChatGoLivePickerDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/ChatGoLivePickerDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/chat/ChatGoLivePickerDialog;->Companion:Lcom/narvii/chat/ChatGoLivePickerDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabledModeList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/chat/BottomPopupDialog;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p3, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->enabledModeList:Ljava/util/List;

    .line 25
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result p3

    iput p3, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->screenWidth:I

    .line 29
    new-instance p3, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

    iget v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->screenWidth:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p3, p1, v0}, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object p3, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->adapter:Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

    .line 30
    new-instance p1, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {p1}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->snapHelper:Landroid/support/v7/widget/PagerSnapHelper;

    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->selectedMode:I

    const p1, 0x7f0b00b5

    .line 49
    invoke-virtual {p0, p1}, Lcom/narvii/chat/BottomPopupDialog;->setupView(I)Landroid/view/View;

    .line 51
    iput-boolean p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->requireApprovalToSpeak:Z

    const p1, 0x7f09093e

    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "findViewById(R.id.recycler_view)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const p1, 0x7f090081

    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "findViewById(R.id.agree_iv)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->agreeIV:Landroid/widget/ImageView;

    const p1, 0x7f090083

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/ChatGoLivePickerDialog$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/ChatGoLivePickerDialog$1;-><init>(Lcom/narvii/chat/ChatGoLivePickerDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById<View>(R.id.agree_others_speak_ll)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p1, 0x7f090a06

    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/ChatGoLivePickerDialog$2;

    invoke-direct {p2, p0}, Lcom/narvii/chat/ChatGoLivePickerDialog$2;-><init>(Lcom/narvii/chat/ChatGoLivePickerDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->snapHelper:Landroid/support/v7/widget/PagerSnapHelper;

    iget-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 82
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 83
    iget p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->screenWidth:I

    int-to-float p2, p2

    mul-float p2, p2, v1

    const p3, 0x3fbadc7f

    div-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    iget-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 87
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->adapter:Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 88
    iget p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->screenWidth:I

    int-to-float p1, p1

    const p2, 0x3e4ccccc    # 0.19999999f

    mul-float p1, p1, p2

    const/4 p2, 0x2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    .line 89
    iget-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    invoke-direct {p3, p1, p1, v0, v1}, Lcom/narvii/chat/ChatGoLivePickerDialog$LinearEdgeDecoration;-><init>(IIIZ)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 90
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/narvii/chat/ChatGoLivePickerDialog$3;

    invoke-direct {p2, p0}, Lcom/narvii/chat/ChatGoLivePickerDialog$3;-><init>(Lcom/narvii/chat/ChatGoLivePickerDialog;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 112
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->adapter:Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

    iget-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->enabledModeList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->setDataList(Ljava/util/List;)V

    .line 114
    iget-boolean p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->requireApprovalToSpeak:Z

    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->updateAgreement(Z)V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->adapter:Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

    return-object p0
.end method

.method public static final synthetic access$getEnabledModeList$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->enabledModeList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->offsetX:I

    return p0
.end method

.method public static final synthetic access$getRequireApprovalToSpeak$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->requireApprovalToSpeak:Z

    return p0
.end method

.method public static final synthetic access$getSelectedMode$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->selectedMode:I

    return p0
.end method

.method public static final synthetic access$getSnapHelper$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Landroid/support/v7/widget/PagerSnapHelper;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->snapHelper:Landroid/support/v7/widget/PagerSnapHelper;

    return-object p0
.end method

.method public static final synthetic access$setOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->offsetX:I

    return-void
.end method

.method public static final synthetic access$setRequireApprovalToSpeak$p(Lcom/narvii/chat/ChatGoLivePickerDialog;Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->requireApprovalToSpeak:Z

    return-void
.end method

.method public static final synthetic access$setSelectedMode$p(Lcom/narvii/chat/ChatGoLivePickerDialog;I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->selectedMode:I

    return-void
.end method

.method public static final synthetic access$updateAgreement(Lcom/narvii/chat/ChatGoLivePickerDialog;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->updateAgreement(Z)V

    return-void
.end method

.method private final updateAgreement(Z)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->agreeIV:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f08022d

    goto :goto_0

    :cond_0
    const p1, 0x7f08022e

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public final getLiveModePickCallback()Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->liveModePickCallback:Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "GoLivePicker"

    return-object v0
.end method

.method public final setLiveModePickCallback(Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog;->liveModePickCallback:Lcom/narvii/chat/ChatGoLivePickerDialog$LiveModePickCallback;

    return-void
.end method
