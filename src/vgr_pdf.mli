(*---------------------------------------------------------------------------
   Copyright 2013 Daniel C. Bünzli. All rights reserved.
   Distributed under the BSD3 license, see license at the end of the file.
   %%NAME%% release %%VERSION%%
  ---------------------------------------------------------------------------*)
(** Vg PDF renderer. 

    Renders a sequence of renderables as a multi-page PDF
    document. Each renderable defines a page of the document.

    {b Bug reports.}  PDF being an insane standard, rendering
    abilities of PDF readers vary wildly. No rendering bug report for
    this renderer will be considered if it cannot be reproduced in the
    latest Adobe Acrobat Reader.

    {e Release %%VERSION%% - %%MAINTAINER%% } *)

(** {1 PDF render targets} *)

val target : ?share:int -> unit -> Vg.Vgr.dst_stored Vg.Vgr.target
(** [target ()] is a PDF render target for rendering to the stored
    destination given to {!Vg.Vgr.create}. 

    {ul 
    {- [share] indicates the number of consecutive pages that share
       resources. If unspecified all pages share resources.  This
       implies a minimal file size but also that paths and outline
       specifications of the images given to {!Vg.render} are kept in
       memory until [`End] is rendered.}}

    @raise Invalid_argument if [share] is not strictly positive. *)

(** {1 Render metadata}

    The following standard metadata keys are supported and
    used to fill the PDF document's information dictionary. 
    {ul
    {- {!Vg.Vgm.authors}, the document's authors.}
    {- {!Vg.Vgm.creator}, name of the application creating the document.}
    {- {!Vg.Vgm.creation_date}, name of the application creating the document.}
    {- {!Vg.Vgm.keywords}, list of keywords for the document.}
    {- {!Vg.Vgm.title}, title of the document.}
    {- {!Vg.Vgm.subject}, subject of the document.}} *)


(** {1 Render warnings} *)

(** {1 Text rendering support} *)

(** {1 Multiple images} 

    Rendering multiple images is supported. Each image defines 
    a page of the PDF file. *)

(*---------------------------------------------------------------------------
   Copyright 2013 Daniel C. Bünzli.
   All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions
   are met:
     
   1. Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.

   2. Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.

   3. Neither the name of Daniel C. Bünzli nor the names of
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  ---------------------------------------------------------------------------*)
