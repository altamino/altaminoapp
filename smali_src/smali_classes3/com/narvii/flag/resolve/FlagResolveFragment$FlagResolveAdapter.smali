.class Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/flag/resolve/FlagResolveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlagResolveAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/flag/resolve/FlagResolveFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;->this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f120790

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;->this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/flag/resolve/FlagResolveFragment;->entryCallback:Lcom/narvii/util/Callback;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 20
    .line 21
    .line 22
    const v1, 0x7f120797

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;->this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/narvii/flag/resolve/FlagResolveFragment;->entryCallback:Lcom/narvii/util/Callback;

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 37
    .line 38
    .line 39
    const v1, 0x7f120796

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;->this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/narvii/flag/resolve/FlagResolveFragment;->entryCallback:Lcom/narvii/util/Callback;

    .line 47
    .line 48
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 54
    .line 55
    .line 56
    const v1, 0x7f120798

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;->this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/narvii/flag/resolve/FlagResolveFragment;->entryCallback:Lcom/narvii/util/Callback;

    .line 64
    .line 65
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method
