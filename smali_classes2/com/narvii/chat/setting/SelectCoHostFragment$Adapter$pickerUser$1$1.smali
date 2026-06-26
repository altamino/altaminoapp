.class final Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter$pickerUser$1$1;
.super Ljava/lang/Object;
.source "SelectCoHostFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;->pickerUser(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $dialog:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter$pickerUser$1$1;->$dialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter$pickerUser$1$1;->$dialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method
