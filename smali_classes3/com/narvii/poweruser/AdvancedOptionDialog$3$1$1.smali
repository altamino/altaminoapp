.class Lcom/narvii/poweruser/AdvancedOptionDialog$3$1$1;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->call(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1$1;->this$2:Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 500
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1$1;->this$2:Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;

    iget-object v0, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->val$v:Landroid/view/View;

    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->access$1200(Lcom/narvii/poweruser/AdvancedOptionDialog$3;Lcom/narvii/widget/FlagItemLayout;)V

    return-void
.end method
