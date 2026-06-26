.class Lcom/narvii/app/NVActivity$16;
.super Ljava/lang/Object;
.source "NVActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVActivity;->handleATO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVActivity;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 2212
    iput-object p1, p0, Lcom/narvii/app/NVActivity$16;->this$0:Lcom/narvii/app/NVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 2215
    iget-object p1, p0, Lcom/narvii/app/NVActivity$16;->this$0:Lcom/narvii/app/NVActivity;

    invoke-static {p1}, Lcom/narvii/app/NVActivity;->access$600(Lcom/narvii/app/NVActivity;)Lcom/narvii/widget/ACMAlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2216
    iget-object p1, p0, Lcom/narvii/app/NVActivity$16;->this$0:Lcom/narvii/app/NVActivity;

    invoke-static {p1}, Lcom/narvii/app/NVActivity;->access$600(Lcom/narvii/app/NVActivity;)Lcom/narvii/widget/ACMAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
