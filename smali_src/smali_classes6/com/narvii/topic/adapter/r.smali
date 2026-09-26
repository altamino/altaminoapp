.class public final synthetic Lcom/narvii/topic/adapter/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/adapter/r;->a:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    iput-object p2, p0, Lcom/narvii/topic/adapter/r;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/adapter/r;->a:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    iget-object v1, p0, Lcom/narvii/topic/adapter/r;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->r(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;Ljava/lang/Object;Landroid/content/DialogInterface;I)V

    return-void
.end method
