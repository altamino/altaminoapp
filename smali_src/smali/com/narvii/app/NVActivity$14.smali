.class Lcom/narvii/app/NVActivity$14;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVActivity$14;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/app/NVActivity$14;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->j(Lcom/narvii/app/NVActivity;)Lcom/narvii/widget/ACMAlertDialog;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/app/NVActivity$14;->this$0:Lcom/narvii/app/NVActivity;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->j(Lcom/narvii/app/NVActivity;)Lcom/narvii/widget/ACMAlertDialog;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 18
    :cond_0
    return-void
.end method
