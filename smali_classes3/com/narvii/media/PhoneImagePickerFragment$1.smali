.class Lcom/narvii/media/PhoneImagePickerFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneImagePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PhoneImagePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/PhoneImagePickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$1;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$1;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->adapter:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
