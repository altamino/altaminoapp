.class Lcom/narvii/search/InstantSearchListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/search/InstantSearchListener$1;->this$0:Lcom/narvii/search/InstantSearchListener;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/search/InstantSearchListener$1;->val$text:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/search/InstantSearchListener$1;->this$0:Lcom/narvii/search/InstantSearchListener;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/search/InstantSearchListener$1;->val$text:Ljava/lang/String;

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Lcom/narvii/search/InstantSearchListener;->a(Lcom/narvii/search/InstantSearchListener;Ljava/lang/String;Z)V

    .line 9
    return-void
.end method
