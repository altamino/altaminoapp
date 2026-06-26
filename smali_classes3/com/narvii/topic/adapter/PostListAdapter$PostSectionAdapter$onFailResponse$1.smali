.class final Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onFailResponse$1;
.super Ljava/lang/Object;
.source "PostListAdapter.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onFailResponse$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onFailResponse$1;

    invoke-direct {v0}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onFailResponse$1;-><init>()V

    sput-object v0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onFailResponse$1;->INSTANCE:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onFailResponse$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 295
    invoke-interface {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 174
    check-cast p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onFailResponse$1;->call(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method
