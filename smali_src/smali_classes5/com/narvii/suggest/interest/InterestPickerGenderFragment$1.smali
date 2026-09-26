.class Lcom/narvii/suggest/interest/InterestPickerGenderFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->doSubmit()V
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
.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerGenderFragment;


# direct methods
.method constructor <init>(Lcom/narvii/suggest/interest/InterestPickerGenderFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerGenderFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerGenderFragment;

    const-string v0, "prefs"

    .line 2
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerGenderFragment;

    .line 4
    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;->z(Lcom/narvii/suggest/interest/InterestPickerGenderFragment;)I

    move-result v0

    const-string v1, "selectedGender"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerGenderFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerGenderFragment;

    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->showNext(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerGenderFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
