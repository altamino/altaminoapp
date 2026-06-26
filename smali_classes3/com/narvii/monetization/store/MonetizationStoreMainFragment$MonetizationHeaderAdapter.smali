.class Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MonetizationStoreMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/MonetizationStoreMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonetizationHeaderAdapter"
.end annotation


# instance fields
.field private HEAD_SUB:Ljava/lang/Object;

.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 454
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 451
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->HEAD_SUB:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 464
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->HEAD_SUB:Ljava/lang/Object;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 469
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 474
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 476
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->HEAD_SUB:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    const p1, 0x7f0b0529

    .line 477
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0904f1

    .line 478
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    const-string p3, "assets://store_banner_animation.webp"

    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p2, 0x7f0906ff

    .line 479
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "membership"

    .line 480
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/MembershipService;

    .line 481
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0f107f

    invoke-virtual {p3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 482
    invoke-virtual {p2}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 483
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    const/16 v0, 0x20

    .line 485
    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 486
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f1080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 487
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x718e4

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 488
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    const p3, 0x7f090700

    .line 491
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {p2}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$900(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
