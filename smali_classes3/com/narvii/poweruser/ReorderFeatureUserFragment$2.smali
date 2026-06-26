.class Lcom/narvii/poweruser/ReorderFeatureUserFragment$2;
.super Ljava/lang/Object;
.source "ReorderFeatureUserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/ReorderFeatureUserFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/ReorderFeatureUserFragment;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureUserFragment$2;->this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureUserFragment$2;->this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
