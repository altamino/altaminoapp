.class public final synthetic Lcom/narvii/master/home/discover/adapter/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/list/ObjectItemClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/q;->a:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/narvii/model/NVObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/q;->a:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    invoke-static {v0, p1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->j(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/model/NVObject;)V

    return-void
.end method
