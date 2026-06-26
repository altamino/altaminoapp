.class Lcom/narvii/poweruser/AdvancedOptionDialog$12$1;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$12;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog$12;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 779
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$12;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$12;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$1500(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;)V

    return-void
.end method
