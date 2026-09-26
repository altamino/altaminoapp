.class public final synthetic Lcom/narvii/chat/setting/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/setting/AddCoHostFragment;

.field public final synthetic b:Lcom/narvii/model/User;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/setting/a;->a:Lcom/narvii/chat/setting/AddCoHostFragment;

    iput-object p2, p0, Lcom/narvii/chat/setting/a;->b:Lcom/narvii/model/User;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/setting/a;->a:Lcom/narvii/chat/setting/AddCoHostFragment;

    iget-object v1, p0, Lcom/narvii/chat/setting/a;->b:Lcom/narvii/model/User;

    invoke-static {v0, v1, p1, p2}, Lcom/narvii/chat/setting/AddCoHostFragment;->s(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;Landroid/content/DialogInterface;I)V

    return-void
.end method
