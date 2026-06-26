.class Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$1;
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
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;


# direct methods
.method constructor <init>(Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 145
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;

    const-string v0, "prefs"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    .line 146
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;

    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->access$000(Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;)I

    move-result v0

    const-string v1, "suggest_age"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 148
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;

    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->access$000(Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;)I

    move-result v0

    const-string v1, "selectedAge"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;

    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;)I

    move-result v0

    const-string v1, "selectedGender"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$1;->this$0:Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->showNext(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 142
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
