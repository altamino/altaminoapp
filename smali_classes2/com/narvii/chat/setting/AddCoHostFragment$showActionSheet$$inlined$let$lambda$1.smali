.class final Lcom/narvii/chat/setting/AddCoHostFragment$showActionSheet$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "AddCoHostFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/AddCoHostFragment;->showActionSheet(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/narvii/model/User;

.field final synthetic this$0:Lcom/narvii/chat/setting/AddCoHostFragment;


# direct methods
.method constructor <init>(Lcom/narvii/model/User;Lcom/narvii/chat/setting/AddCoHostFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$showActionSheet$$inlined$let$lambda$1;->$it:Lcom/narvii/model/User;

    iput-object p2, p0, Lcom/narvii/chat/setting/AddCoHostFragment$showActionSheet$$inlined$let$lambda$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 244
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$showActionSheet$$inlined$let$lambda$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    iget-object p2, p0, Lcom/narvii/chat/setting/AddCoHostFragment$showActionSheet$$inlined$let$lambda$1;->$it:Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$deleteCoHost(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;)V

    return-void
.end method
