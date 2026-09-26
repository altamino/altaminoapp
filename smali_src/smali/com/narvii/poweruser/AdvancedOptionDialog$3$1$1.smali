.class Lcom/narvii/poweruser/AdvancedOptionDialog$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1$1;->this$2:Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;

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
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1$1;->this$2:Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->val$v:Landroid/view/View;

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->a(Lcom/narvii/poweruser/AdvancedOptionDialog$3;Lcom/narvii/widget/FlagItemLayout;)V

    .line 12
    return-void
.end method
