.class Lcom/narvii/invite/InviteContactFragment$2;
.super Lcom/narvii/list/DividerAdapter;
.source "InviteContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/invite/InviteContactFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/invite/InviteContactFragment;


# direct methods
.method constructor <init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$2;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method
