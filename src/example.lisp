(in-package :slideware)

(defslides (:title "Camlistore"
            :path "/home/bsbutler/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/slideware/slides.js"
            :layout "layout-faux-widescreen")

  (:article
   (:h1 "Camlistore")
   (:p "Brad Fitzpatrick" :br "2011-05-07")
   (:p (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))

  (:article
   (:h3 "Who Am I?")
   (:ul :class "nobuild"
        (:li "Perl Hacker since 1994")
        (:li "Projects:"
             (:table
              (:tr :valign "top"
                   (:th "Danga / 6A (Perl)")
                   (:th "Google"))
              (:td :class "nobuild"
                   (:div "Livejournal")
                   (:div "memcached")
                   (:div "Perlbal")
                   (:div "MogileFS")
                   (:div :class "blue" "OpenID"))
              (:td :class "nobuild"
                   (:div (:nobr "Social Graph API ("
                                (:span :class "blue" "XFN / FOAF") ")"))
                   (:div :class "blue" "WebFinger")
                   (:div :class "blue" "PubSubHubbub")
                   (:div "Android")
                   (:div "Go")))
             (:div :style "font-size: 70%; margin-top: 1em"
                   "*" (:span :class "blue" "decentralized social")))))

  (:article
   (:h3 "But why am I in Brazil?")
   (:ul :class "nobuild"
        (:li (:i "\"Hey, want to come speak at a Perl conference in Brazil?\""))
        (:li "\"Yes, totally, but... I don't write much Perl these days. :-(\"")
        (:li :style "margin-top: 2em" (:i "\"You could speak on memcached.\""))
        (:li "\"But that's an old topic, no?\"")
        (:li :style "margin-top: 2em" (:i "\"You have any new project you're excited about?\""))))

  (:article
   (:h1 :align "center" "Camlistore!"))

  (:article
   (:h3 "Camlistore")
   (:ul
    (:li "New open source project")
    (:li "Almost a year old")
    (:li "Still in development")
    (:li "Starting to be useful :-)")
    (:li "Hard to easily describe...")))


  (:article
   (:q "Camlistore is a way to store, sync, share, model and back up content")
   (:div :class "author" "camlistore.org"))

  (:article
   (:h3 "Motivation")
   (:ul
    (:li "I've written too many Content Management Systems")
    (:ul
     (:li "blogs, comments, photos, emails, backups, scanned paperwork, ...")
     (:li "is a scanned photo a scan, a photo, or a blog post? who cares.")
     (:li "write " (:b "one CMS to rule them all"))
     (:li "... or at least a good framework for higher-level CMSes"))))

  (:article
   (:h3 "Motivation (cont)")
   (:ul
    (:li "I still want to help solve the Decentralized Social Network Problem")
    (:ul
     (:li "protocols, not companies")
     (:li "gmail, hotmail: hosted versions of SMTP, IMAP")
     (:li "... but I can run my own SMTP/IMAP server if I want.")
     (:li "... or change my SMTP/IMAP provider"))))

  (:article
   (:h3 "Motivation (cont)")
   (:ul
    (:li "I wanted something conceptually simple.")
    (:li "HTTP interfaces, not language-specific")
    (:li "I use lots of machines; don't want to think about sync or conflicts.")
    (:li "Data archaeology: should be easy and obvious to reconstruct in 20 or 100 years")))

  (:article
   (:h3 "The Product")
   (:ul
    (:li "one private dumping ground to store anything")
    (:li "backups, filesystems, objects, photos, likes, bookmarks, shares, my website, ...")
    (:li "live backup my phone")
    (:li "live replicate / sync my dumping ground between my house & laptop & Amazon & Google")
    (:li "web UI (ala gmail, docs.google.com, etc) or FUSE filesystem")
    (:li "Easy for end-users; powerful for dorks")))

  (:article
   (:h3 "Security Model")
   (:ul
    (:li (:i (:b "your")) " private repo, for life")
    (:li "everything private by default")
    (:li "grant access to specific objects/trees with friends or the world")
    (:li "web UI or CLI tools let you share")))

  (:article
   (:h1 :class "center" "So what's with the silly name?"))

  (:article
   (:h3 "Camlistore")
   (:ul
    (:li "Content-")
    (:li "Addressable")
    (:li "Multi-")
    (:li "Layer-")
    (:li "Indexed")
    (:li "Storage")))

  (:article
   (:h3 "Content-Addressable")
   (:ul
    (:li "At the core, everything is stored & addressed by its digest (e.h. SHA1, MD5, etc)")
    (:li "e.g. " (:tt :class "smaller" "sha1-0beec7b5ea3f0fdbc95d0dd47f3c5bc275da8a33")
         " for the blob " (:tt :class "smaller" "foo"))
    (:li "Great properties:"
         (:ul
          (:li "no versions of content: changing it changes the digest too")
          (:li "no versions: no sync conflicts")
          (:li "no versions: perfect caching (have it or don't)")))))

  (:article
   (:h3 "Multi-Layer, Indexed")
   (:ul
    (:li "Unix philosophy: small pieces with well-defined interfaces that can be chained or composed")
    (:li "Camlistore pieces include:"
         (:ul :class "dense"
              (:li :style "margin-top: 1em" "Blob storage: memory, disk, S3, Google, MySQL index, etc")
              (:li "Schema")
              (:li "Signing")
              (:li "Replication")
              (:li "Indexing: (e.g. replicate from disk to MySQL index)")
              (:li "Search")
              (:li "HTML UI")))))

  (:article
   (:h3 "Logically")
   (:img :src "arch.png" :width "100%"))

  (:article
   (:h3 "In reality")
   (:ul
    (:li "End-users: use a hosted version")
    (:li "Dorks: Single server binary with all the logical pieces")))

  (:article
   (:h2 "From the bottom up..."))

  (:article
   (:h2 "Blob Server"))

  (:article
   (:h3 "Blob serer: how dumb it is")
   (:ul
    (:li "\"Blob\" == zero or more bytes. "
         (:i :class "red" "no") " meta-data")
    (:li "private operations, to owner of data only:")
    (:ul
     (:li :class "green" "get(blobref) -> blob")
     (:li :class "green" "stat(blobref+) -> [(blobref, size), ...]")
     (:li :class "green" "put(blobref, blob)")
     (:li :class "green" "enumerate(..) -> [(blobref, size), ...] (sorted by blobref)"))
    (:li "no public (non-owner) access")
    (:li "HTTP interface: " (:tt "GET /camli/sha1-xxxxxxx HTTP/1.1"))
    (:li (:span :class "green" "delete(blobref)") " is disabled by default, privileged op for GC or replication queues only")))

  (:article
   (:h3 "Blob Server: seriously, no metadata")
   (:ul
    (:li "no filenames")
    (:li "no \"mime types\"")
    (:li "no \"{create,mod,access\"} time")
    (:li "size is implicit")
    (:li "blob: just some bytes")
    (:li "metadata? layers above.")))

  (:article
   (:h1 :class "center" "Uh, what can you do with that?"))

  (:article
   (:h3 "Uh, what can you do with that?")
   (:ul
    (:li "With just a blob server?")
    (:li "not much")
    (:li "but let's start with an easy example...")))

  (:article
   (:h1 :class "center" "Filesystem Backups"))

  (:article
   (:h3 "Filesystem Backups")
   (:ul
    (:li "previous project: brackup"
         (:ul
          (:li "good: Perl, slide/dice/encrypt S3 backup, content-addressed, good iterative backups")
          (:li "bad: large (several MB) \"backup manifest\" text files")))
    (:li "fossil/venti, git, etc: directories content-addressed by content of their children, hash trees, etc")
    (:li "git: \"tree objects\", \"commit objects\", etc")
    (:li "Camlistore: \"schema blobs\"")))

  (:article
   (:h3 "Schema: how to model your content")
   (:ul
    (:li "Camlistore defines " (:i "one possible") " schema")
    (:li "but blobserver doesn't know about it all")
    (:li "tools generate schema,")
    (:li "indexer + search understand the schema.")))

  (:article
   (:h3 "Schema Blobs")
   (:ul
    (:li "so if all blobs are just dumb blobs of bytes with no metadata,")
    (:li "how do you store metadata?")
    (:li "as blobs themselves!")))

  (:article
   (:h3 "Minimal Schema Blob")
   (:section
    (:pre "{
\"camliVersion\": 1,
\"camliType\": \"whatever\"
}"))
   (:p "Whitespace doesn't matter. Just must be valid JSON in its entirety. Use whatever JSON libraries you've got.")
   (:p "That one is named" (:br) (:tt :class "smaller" "sha1-19e851fe3eb3d1f3d9d1cefe9f92c6f3c7d754f6"))
   (:p "or perhaps: " (:tt :class "smaller" "sha512-2c6746aba012337aaf113fd63c24d994a0703d33eb5d6ed58859e45dc4e02dcf<br/>dae5c4d46c5c757fb85d5aff342245fe4edb780c028a6f3c994c1295236c931e")))

  (:article
   (:h3 "Schema blob; type \"file\"")
   (:section (:pre "{\"camliVersion\": 1,
" (:span :style "background: #fff" "\"camliType\": \"file\",
") "\"fileName\": \"foo.dat\",
\"unixPermission\": \"0644\",
...,
\"size\": 6000133,
\"contentParts\": [
  {\"blobRef\": \"sha1-...dead\", \"size\": 111},
  {\"blobRef\": \"sha1-...beef=\", \"size\": 5000000, \"offset\": 492 },
  {\"size\": 1000000},
  {\"blobRef\": \"digalg-blobref\", \"size\": 22},
  ]
}")))

  )

#|

      <article>
        <h3>Schema blob; type "directory"</h3>
        <section><pre>{"camliVersion": 1,
 <span style='background: #fff'>"camliType": "directory",</span>
 "fileName": "foodir",
 "unixPermission": "0755",
  ...,
 "entries": <span style='background: #fff'>"sha1-c3764bc2138338d5e2936def18ff8cc9cda38455"</span>
}</pre></section>
      </article>

      <article>
        <h3>Schema blob; type "static-set"</h3>
        <section><pre>{"camliVersion": 1,
 <span style='background: #fff'>"camliType": "static-set",</span>
"members": [
     "sha1-xxxxxxxxxxxx",
     "sha1-xxxxxxxxxxxx",
     "sha1-xxxxxxxxxxxx",
     "sha1-xxxxxxxxxxxx",
     "sha1-xxxxxxxxxxxx",
     "sha1-xxxxxxxxxxxx",
  ]
}</pre></section>
      </article>

      <article>
        <h3>
          Backup a directory...
        </h3>
        <section><pre>$ camput --file $HOME
sha1-8659a52f726588dc44d38dfb22d84a4da2902fed</pre></section>

<p>(like git/hg/fossil, that identifier represents everything down.)</p>

<p>Iterative backups are cheap, easy identifier to share, etc</p>

<p>But how will you remember that identifier? (later)</p>
      </article>

      <article>
        <h3>
          But what about mutable data?
        </h3>
        <ul>
          <li>immutable data is easy to represent & reference</li>
          <ul>
            <li><tt class='smaller'>sha1-8659a52f726588dc44d38dfb22d84a4da2902fed</tt> is an immutable snapshot</li>
            </ul>
          <li>how to represent mutable data in an immutable, content-addressed world?</li>
          <li>how to share a reference to a mutable object when changing an object mutates its name?</li>
        </ul>
      </article>

      <article>
        <h1 class='center'>
          Objects & "Permanodes"
        </h1>
      </article>

      <article>
        <h3>
          Terminology
        </h3>
        <ul>
          <li><span class='red'>blob</span>: just dumb, immutable series of bytes</li>
          <li><span class='red'>schema blob</span>: a blob that's a valid JSON object w/ camliVersion & camliType</li>
          <li><span class='red'>signed schema blob</span> aka "<span class='red'>claim</span>": a schema blob with an embedded OpenPGP signature</li>
          <li><span class='red'>object</span>: something mutable.  represented as an anchor "<span class='blue'>permanode</span>" + a set of mutations (<span class='blue'>claims</span>)</li>
          <li><span class='red'>permanode</span>: a stable reference. an anchor. just a <span class='blue'>signed schema blob</span>, but of almost no content...</li>
        </ul>
      </article>

      <article>
        <h3>
          Permanode
        </h3>
        <section><pre><span style='font-weight: bold' class='blue'>$ camput --permanode</span>
sha1-ea799271abfbf85d8e22e4577f15f704c8349026

<span style='font-weight: bold' class="blue">$ camget sha1-ea799271abfbf85d8e22e4577f15f704c8349026</span>
<span style="background: #ff7">{"camliVersion": 1,
  "camliSigner": "sha1-c4da9d771661563a27704b91b67989e7ea1e50b8",
  <span style='font-weight: bold'>"camliType": "permanode"</span>,
  "random": "oj)r}$Wa/[J|XQThNdhE"</span>
,"camliSig":"iQEcBAABAgAGBQJNRxceAAoJEGjzeDN/6vt8ihIH/Aov7FRIq4dODAPWGDwqL
1X9Ko2ZtSSO1lwHxCQVdCMquDtAdI3387fDlEG/ALoT/LhmtXQgYTt8QqDxVdu
EK1or6/jqo3RMQ8tTgZ+rW2cj9f3Q/dg7el0Ngoq03hyYXdo3whxCH2x0jajSt4RCc
gdXN6XmLlOgD/LVQEJ303Du1OhCvKX1A40BIdwe1zxBc5zkLmoa8rClAlHdqwo
gxYFY4cwFm+jJM5YhSPemNrDe8W7KT6r0oA7SVfOan1NbIQUel65xwIZBD0ah
CXBx6WXvfId6AdiahnbZiBup1fWSzxeeW7Y2/RQwv5IZ8UgfBqRHvnxcbNmScrzl
p3V3ZoY"}</pre></section>

      </article>

      <article>
        <h3>
          Backup a directory...
        </h3>
        <section><pre><span style='font-weight: bold'>$ camput --file $HOME</span>
sha1-8659a52f726588dc44d38dfb22d84a4da2902fed
<span style='font-weight: bold'>$ camput --permanode --file $HOME</span>
sha1-ea799271abfbf85d8e22e4577f15f704c8349026
<span style='font-weight: bold'>$ camput --permanode --name="Brad's home directory" --file $HOME</span>
sha1-ea799271abfbf85d8e22e4577f15f704c8349026</pre></section>
        <ul>
          <li>all the file data blobs, file/dir schema blobs,</li>
          <li>a new permanode, owned by you</li>
          <li>a mutation: permanode's content attribute == directory root</li>
          <li>a mutation: permanode's name attribute == "Brad's home directory"</li>
        </ul>
      </article>

      <article class='fill'>
        <p><img src="fsbackup.png" height="100%"/></p>
      </article>

      <article>
        <h3>Aside: Garbage Collection</h3>
        <ul>
          <li>Permanodes are (optionally) GC roots,</li>
          <li>or anything signed by you.</li>
          <li>If not a blob isn't reachable by a signed root, can be deleted.</li>
          <li>If you want to keep a plain "dumb" blob, you should create a "keep" claim for it, or a permanode.</li>
        </ul>
      </article>

      <article>
        <h1 class='center'>
          Modeling non-filesystem objects
        </h1>
      </article>

      <article>
        <h3>Example: a photo gallery</h3>
        <ul>
          <li>Photos are objects</li>
          <li>Galleries (sets) are objects</li>
          <li>Photos are members of galleries</li>
          <li>Photos & galleries have attributes (single-valued: "title", multi-valued: "tag")</li>
          <li>Photos might be updated over time:
            <ul>
              <li>EXIF GPS updated, cropping, white balance</li>
              <li>don't want to break links!</li>
              </ul>
            </li>
        </ul>
      </article>

      <article class='fill'>
        <p><img src="blobjects.png" width="100%"/></p>
      </article>

      <article>
        <h1 class='center'>
          How to make sense of that?
        </h1>
      </article>

      <article>
        <h1 class='center'>
          Indexing & Search
        </h1>
      </article>

      <article>
        <h3>
          Indexing: summary
        </h3>
        <p style='margin-top: 2em'>For each blob, build an index of:
        <ul>
          <li>directed graph of inter-blob references</li>
          <li>(permanode, time) => resolved attributes</li>
          <li>(permanode, time) => set memberships</li>
          <li>etc...</li>
        </ul>
      </article>

      <article>
        <h3>
          Indexing & Replication
        </h3>
        <ul>
          <li>indexing is real-time, no polling</li>
          <li>MySQL index speaks the blob server protocol</li>
          <li>just replicate <i>to</i> the index (MySQL, etc) just like other blob servers (Amazon S3, etc)</li>
        </ul>
        <center><img src='repl.png' /></center>
      </article>

      <article>
        <h3>
          Replication Implementation
        </h3>
        <ul>
          <li>cold bootstrap: <tt class='green'>enumerate()</tt> (sorted) all blobs from <tt class='red'>src</tt> and <tt class='red'>dst</tt>, copy all blobs that <tt>dst</tt> doesn't have.</tt>
          <li>more efficient: use multiple machines, starting at <tt class='blue'>sha1-0*</tt>, <tt class='blue'>sha1-1*</tt>, <tt class='blue'>sha1-2*</tt>, ... etc</li>
          <li>once in-sync, for each <tt class='red'>(src, dst)</tt> replication pair, keep a <tt class='red'>src_to_dst_QUEUE</tt> namespace on <tt class='red'>src</tt>,</li>
          <li>all new blobs to <tt class='red'>src</tt> also go into <tt class='red'>src_to_dst_QUEUE</tt> (refcount, hardlink, etc)</li>
          <li>real-time watch <tt class='red'>src_to_dst_QUEUE</tt> & replicate & delete from the queue. or re-enumerate just the queue.
        </ul>
      </article>

      <article>
        <h3>
          Search
        </h3>
        <ul>
          <li>Permanodes created by $who, sorted by date desc, type "photo", tagged "funny"</li>
          <li>My recent backups with attribute "hostname" == "camlistore.org",</l>
          <li>All friends' galleries in which this photo appears,</li>
          <li>etc...</li>
        </ul>
        <p>...similar to your email, or docs.google.com.  "My stuff" or "My bookmarks".</p>
      </article>

      <article>
        <h3>
          Privacy Model
        </h3>
        <ul>
          <li>all your blobs & objects & searches are private</li>
          <li>nothing is public by default</li>
        </ul>
      </article>

     <article>
        <h1>
          What if you want to share with friends, or globally publish something?
        </h1>
     </article>

     <article>
        <h3>
          Sharing & Share Blobs
        </h3>
        <p>the act of sharing involves creating a new <span class='red'>share claim</span>, just another blob, signed.</p>
        <p>here is: <a href="http://camlistore.org:3179/camli/sha1-071fda36c1bd9e4595ed16ab5e2a46d44491f708"><tt class='smaller'>sha1-071fda36c1bd9e4595ed16ab5e2a46d44491f708</tt></a>:</p>
        <section><pre>{"camliVersion": 1,
  "authType": <span style="background: #fff">"haveref"</span>,
  "camliSigner": "sha1-f019d17dd308eebbd49fd94536eb67214c2f0587",
  "camliType": "share",
  "target": "<a style="background: #fff" href="http://camlistore.org:3179/camli/sha1-0e5e60f367cc8156ae48198c496b2b2ebdf5313d">sha1-0e5e60f367cc8156ae48198c496b2b2ebdf5313d</a>",
  "transitive": <span style="background: #fff">true</span>
,"camliSig":"iQEcBAABAgAGBQJNQJGuAAoJEIUeCLJL7Fq1EuAIAL/nGoX8caGaANnam0bcIQT7C61wXMRW4qCCaFW+w67ys5z4ztfnTPKwL9ErzMF8Hd32Xe/bVcF6ZL38x/axqI7ehxN8lneKGQNoEdZDA9i752aAr0fkAba6eDehoOj9F4XxOzk3iVrq445jEXtu/+twamHV3UfRozWK1ZQb57dM+cRff47M/Y6VIBRSgW2BrABjuBs8G6PiKxycgh1mb+RL8f9KG+HB/yFuK37YJqZ0zU2OTRp6ELiOgTxbeg99koV9Duy4f4mQgxQgli46077Sv/ujzIeVbmdFL3OenGEzQnyKG0fhf8fa5WkED0XfH7zibAHLiSq3O7x11Q0406U==ANug"}</pre></section>
        Target w/ ?via= parameter: <a href="http://camlistore.org:3179/camli/sha1-0e5e60f367cc8156ae48198c496b2b2ebdf5313d?via=sha1-071fda36c1bd9e4595ed16ab5e2a46d44491f708">sha1-0e5e60f?via=sha1-071fda</a> & <a href="http://camlistore.org:3179/camli/sha1-3dc1d1cfe92fce5f09d194ba73a0b023102c9b25?via=sha1-071fda36c1bd9e4595ed16ab5e2a46d44491f708,sha1-0e5e60f367cc8156ae48198c496b2b2ebdf5313d">next hop</a>
      </article>

     <article>
        <h3>
          Sharing Details & Implementation
        </h3>
        <ul>
          <li>blobserver is private-only. the <span class='red'>frontend</span> mediates access to the world, checks authentication, or lack thereof.</li>
          <li>all non-owner requests must present a share blob's blobref as an access token</li>
          <li>that share blob dictates:
            <ul>
              <li>what sort of authenticatation is required (or "<tt class="green">haveref</tt>" for none, like a secret link)</li>
              <li>which blob(s) are granted access (the "<tt class='green'>transitive</tt>" option)</li>
            </ul>
          </li>
          <li>requests for a blob must include the path to get there, from the share root</li>
        </ul>
     </article>

     <article>
        <h3>
          What can be shared
        </h3>
        <ul>
          <li>Share a single blob,
          <li>Share a subtree,
          <li>Share a <i>search query</i> and its results' reachable blobs</li>
          <li>... give out [world, girlfriend] access to all pictures you take on your phone, in real-time</li>
        </ul>
     </article>

      <article>
        <h2>
          Project Status
        </h2>
      </article>

     <article>
        <h3>
          Project Status
        </h3>
        <ul>
          <li>Blobstore, Go (any OS), can store on disk, s3, mysqlindex
          <li>Blobstore, Python (App Engine only) can store on Google
          <li>Perl tests for two blob stores
          <li>Android uploader (Java)
          <li>Bunch of Go libraries / command-line tools: sync, put, get
          <li>FUSE filesystem (read-only, currently)
          <li>Search: basics working. more queries looks easy now.
          <li>Simple, self-contained everything binary (blob storage, sharing, search, index, frontend) for early adopters: ~95%
          <li>Web UI / JavaScript APIs: in progress
        </ul>
     </article>

     <article>
        <h3>
          In Review
        </h3>
        <ul>
          <li>You own all your blobs; everything is private by default.</li>
          <li>Mutable objects are made of mutation claim blobs.</li>
          <li>Sync is trivial: either you have it or you don't</li>
          <li>Some blobs are signed</li>
          <li>Indexing & search to find your blobs / roots</li>
          <li>To share you must create a declaration of sharing ...</li>
          <li>... and the system will only allow access if such claims exist.</li>
          <li>Decentralized, but hostable.  You can run your own server (with no central
            company or point of control), but you can also let somebody else do it for
            you, like email.</li>
        </ul>
     </article>

      <article>
        <h3>
          Thank you!
        </h3>

        <p class='smaller'>Brad Fitzpatrick, <a href="mailto:brad@danga.com">brad@danga.com</a>; Want to help? More info: <a href="http://camlistore.org/">camlistore.org</a></p>
        <img src='arch.png' width='100%'/>
      </article>

    </section>

  </body>
</html>
|#
