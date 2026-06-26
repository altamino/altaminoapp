.class public final Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter$1;
.super Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;
.source "GlobalChatsSearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;-><init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    invoke-direct {p0, p2}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/LogEvent$Builder;",
            "Lcom/narvii/logging/ObjectInfo<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 227
    iget-object p2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    invoke-virtual {p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->getKeyword()Ljava/lang/String;

    move-result-object p2

    const-string v0, "searchQuery"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method
