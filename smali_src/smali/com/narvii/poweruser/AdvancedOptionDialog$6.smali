.class Lcom/narvii/poweruser/AdvancedOptionDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$6;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/widget/FlagItemLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$6;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 9
    .line 10
    .line 11
    const v1, 0x7f1200b0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->p(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$6;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    instance-of p1, p1, Lcom/narvii/model/User;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$6;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/model/User;

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->g(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;Z)V

    .line 40
    :cond_0
    return-void
.end method
