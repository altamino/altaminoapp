.class Lcom/narvii/app/NVActivity$9;
.super Ljava/lang/Object;
.source "NVActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVActivity;->initPageBackground()V
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

    .line 1016
    iput-object p1, p0, Lcom/narvii/app/NVActivity$9;->this$0:Lcom/narvii/app/NVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/narvii/app/NVActivity$9;->this$0:Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->configPageBackground()V

    return-void
.end method

.method public onWindowDetached()V
    .locals 0

    return-void
.end method
