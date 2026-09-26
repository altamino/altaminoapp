.class Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$3;
.super Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;


# direct methods
.method constructor <init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$3;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;-><init>(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;Lcom/narvii/list/NVAdapter;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected getMinimumHeight()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$3;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const/high16 v1, 0x41400000    # 12.0f

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method
