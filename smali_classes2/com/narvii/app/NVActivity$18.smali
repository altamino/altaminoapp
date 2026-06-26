.class Lcom/narvii/app/NVActivity$18;
.super Ljava/lang/Object;
.source "NVActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 2247
    iput-object p1, p0, Lcom/narvii/app/NVActivity$18;->this$0:Lcom/narvii/app/NVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 2250
    iget-object p1, p0, Lcom/narvii/app/NVActivity$18;->this$0:Lcom/narvii/app/NVActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/app/NVActivity;->access$602(Lcom/narvii/app/NVActivity;Lcom/narvii/widget/ACMAlertDialog;)Lcom/narvii/widget/ACMAlertDialog;

    .line 2251
    iget-object p1, p0, Lcom/narvii/app/NVActivity$18;->this$0:Lcom/narvii/app/NVActivity;

    invoke-static {p1, v0}, Lcom/narvii/app/NVActivity;->access$702(Lcom/narvii/app/NVActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
