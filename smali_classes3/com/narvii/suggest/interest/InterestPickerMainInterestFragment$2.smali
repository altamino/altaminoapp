.class Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$2;
.super Ljava/lang/Object;
.source "InterestPickerMainInterestFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->doSubmit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;


# direct methods
.method constructor <init>(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$2;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 149
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$2;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-static {v1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "selectedInterest"

    .line 151
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 152
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$2;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->showNext(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 146
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
