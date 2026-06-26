.class Lcom/narvii/search/InstantSearchListener$1;
.super Ljava/lang/Object;
.source "InstantSearchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/search/InstantSearchListener;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/search/InstantSearchListener;Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener$1;->this$0:Lcom/narvii/search/InstantSearchListener;

    iput-object p2, p0, Lcom/narvii/search/InstantSearchListener$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener$1;->this$0:Lcom/narvii/search/InstantSearchListener;

    iget-object v1, p0, Lcom/narvii/search/InstantSearchListener$1;->val$text:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/search/InstantSearchListener;->access$000(Lcom/narvii/search/InstantSearchListener;Ljava/lang/String;Z)V

    return-void
.end method
