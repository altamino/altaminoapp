.class public final synthetic Lcom/narvii/chat/screenroom/playlist/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/narvii/model/PlayListItem;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;Ljava/util/ArrayList;Lcom/narvii/model/PlayListItem;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/a;->a:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/playlist/a;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/chat/screenroom/playlist/a;->c:Lcom/narvii/model/PlayListItem;

    iput-object p4, p0, Lcom/narvii/chat/screenroom/playlist/a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/a;->a:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/a;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/playlist/a;->c:Lcom/narvii/model/PlayListItem;

    iget-object v3, p0, Lcom/narvii/chat/screenroom/playlist/a;->d:Ljava/lang/Object;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->f(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;Ljava/util/ArrayList;Lcom/narvii/model/PlayListItem;Ljava/lang/Object;Landroid/content/DialogInterface;I)V

    return-void
.end method
