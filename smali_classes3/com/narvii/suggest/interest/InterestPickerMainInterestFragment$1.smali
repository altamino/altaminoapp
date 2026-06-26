.class Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$1;
.super Lcom/narvii/list/StaticViewAdapter;
.source "InterestPickerMainInterestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;


# direct methods
.method constructor <init>(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->access$000(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->access$000(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/StaticViewAdapter;->getCount()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/StaticViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0906b1

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 103
    instance-of p3, p2, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 104
    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    const v0, 0x7f0f0794

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1
.end method
