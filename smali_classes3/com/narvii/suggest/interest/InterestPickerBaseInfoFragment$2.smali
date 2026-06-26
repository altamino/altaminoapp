.class Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$2;
.super Ljava/lang/Object;
.source "InterestPickerBaseInfoFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->doSubmit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;


# direct methods
.method constructor <init>(Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$2;->this$0:Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$2;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$2;->this$0:Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;

    iget-object p1, p1, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->btSkip:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
