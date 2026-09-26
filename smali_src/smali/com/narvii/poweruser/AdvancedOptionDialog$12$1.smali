.class Lcom/narvii/poweruser/AdvancedOptionDialog$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$12;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$12;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$12;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->r(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;)V

    .line 12
    return-void
.end method
