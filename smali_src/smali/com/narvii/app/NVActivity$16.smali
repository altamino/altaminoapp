.class Lcom/narvii/app/NVActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVActivity$16;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/app/NVActivity$16;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/app/NVActivity;->m(Lcom/narvii/app/NVActivity;Lcom/narvii/widget/ACMAlertDialog;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/app/NVActivity$16;->this$0:Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/narvii/app/NVActivity;->n(Lcom/narvii/app/NVActivity;Ljava/lang/String;)V

    .line 12
    return-void
.end method
