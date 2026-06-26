.class Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "FlagResolveFragment.java"


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

    .line 75
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;->this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;

    .line 76
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 83
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v1, 0x7f0f06e7

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 84
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;->this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;

    iget-object v1, v1, Lcom/narvii/flag/resolve/FlagResolveFragment;->entryCallback:Lcom/narvii/util/Callback;

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v1, 0x7f0f06ee

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 88
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;->this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;

    iget-object v1, v1, Lcom/narvii/flag/resolve/FlagResolveFragment;->entryCallback:Lcom/narvii/util/Callback;

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v1, 0x7f0f06ed

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 92
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;->this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;

    iget-object v1, v1, Lcom/narvii/flag/resolve/FlagResolveFragment;->entryCallback:Lcom/narvii/util/Callback;

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 93
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v1, 0x7f0f06ef

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 96
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveFragment$FlagResolveAdapter;->this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;

    iget-object v1, v1, Lcom/narvii/flag/resolve/FlagResolveFragment;->entryCallback:Lcom/narvii/util/Callback;

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
