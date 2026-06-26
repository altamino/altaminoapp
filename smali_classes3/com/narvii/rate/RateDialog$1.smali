.class Lcom/narvii/rate/RateDialog$1;
.super Ljava/lang/Object;
.source "RateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/rate/RateDialog;-><init>(Lcom/narvii/app/NVContext;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/rate/RateDialog;


# direct methods
.method constructor <init>(Lcom/narvii/rate/RateDialog;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/narvii/rate/RateDialog$1;->this$0:Lcom/narvii/rate/RateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/narvii/rate/RateDialog$1;->this$0:Lcom/narvii/rate/RateDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
