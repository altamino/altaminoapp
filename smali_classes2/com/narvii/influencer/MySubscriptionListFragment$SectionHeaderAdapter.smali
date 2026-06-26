.class public Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "MySubscriptionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/influencer/MySubscriptionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionHeaderAdapter"
.end annotation


# instance fields
.field private attachedAdapter:Lcom/narvii/list/NVAdapter;

.field private text:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/influencer/MySubscriptionListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 414
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 415
    iput-object p3, p0, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;->attachedAdapter:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;->attachedAdapter:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b0455

    .line 424
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 425
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 426
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;->text:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1
.end method

.method public setAttachAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$SectionHeaderAdapter;->attachedAdapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method
