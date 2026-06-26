.class Lcom/narvii/poweruser/ReorderFeatureFragment$2;
.super Ljava/lang/Object;
.source "ReorderFeatureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/ReorderFeatureFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/ReorderFeatureFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/ReorderFeatureFragment;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureFragment$2;->this$0:Lcom/narvii/poweruser/ReorderFeatureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureFragment$2;->this$0:Lcom/narvii/poweruser/ReorderFeatureFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
